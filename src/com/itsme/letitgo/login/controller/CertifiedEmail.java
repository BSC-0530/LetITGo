package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.util.Properties;
import java.util.Random;

import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.service.MemberService;
import com.sun.xml.internal.ws.api.message.Message;

@WebServlet("/regist")
public class CertifiedEmail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*
		 * 먼저 아이디와 이메일을 입력받고 아이디와 이메일이 있으면 등록된 이메일로 난수를 보내서 인증하도록 할 예정
		 * 일단 있는 회원인지 확인부터하고 있다면 서버 정보를 properties로 넣어주고 인증번호를 만들기 위해 
		 * StringBuffer로 추가한 뒤 toString해서 데이터 전송시 편하게 바꿈
		 * 끝부분에 인증키를 세션값에 넣는 이유는 request로는 보관이 용이하지않기 때문에 
		 * 세션에 넣고 다음 서블릿에서 불러와 사용자가 입력한 인증값과 비교하기위해 사용
		 * */
		
		String memId = request.getParameter("memId");
		String email = request.getParameter("email");
		
		//먼저 아이디로 회원정보를 받아오고 가져온 데이터에서 email값을 비교하여 존재하지 않으면 인증메일을 보내지 못함
		MemberDTO member = new MemberService().memberLogin(memId); //임포트를 뭘 받을지 모르겠음;;MemberDTO에서 받아야하나?
		if(member == null ||!member.getEmail().equals(email)) {
			
			request.setAttribute("msg", "아이디나 이메일 정보가 맞지 않습니다.");
			request.setAttribute("loc", "????? 비밀번호 경로 설정 ex)/member/searchPw");
			request.getRequestDispatcher("????경로설정: 뷰에서 메세지가 보여지는 부분").forward(request, response);
			
			return;
		} 
		
		//mail server 설정
		String host = "smpt.naver.com";
		String user = "itsme-letitgo";			//자신의 네이버 계정 (이거 하려고 새로 하나 팠습니다.)
		String password = "letitgo-itsme";		//자신의 너이버 패스워드 (자신의 네이버 패스워드)		
		
		//메일 받을 주소
		String toEmail = member.getEmail();
		
		//SMTP 서버 정보를 설정한다.
		Properties props = new Properties();	//임포트 뭘 받아야하는지
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");
		
		//인증번호 생성기
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();
		
		for(int i = 0; i < 10; i++) {
			
			int rIndex = rnd.nextInt(3);
			
			switch(rIndex) {
				case 1 : temp.append((char) ((int) (rnd.nextInt(26)) + 97)); break;	// a-z 
				case 2 : temp.append((char) ((int) (rnd.nextInt(26)) + 65)); break;	// A-Z 
				case 3 : temp.append((rnd.nextInt(10))); break;	// 0-9
			}
		} 
		
		String AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey);
		
		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user, password);
			}
		});
		
		//email 전송
	try {	
		MimeMessage massage = new MimeMessage(session);
		msg.setFrom(new InternetAddress(user, "Let IT go"));
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
		
		//메일 제목 
		msg.setSubject("안녕하세요 Let IT go 인증 메일입니다.");
		//메일 내용
		msg.setText("인증 번호는 : " + temp);
		
		Transport.send(msg);
		System.out.println("이메일 전송");
		
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	HttpSession saveKey = request.getSession();
	saveKey.setAttribute("AuthenticationKey", AuthenticationKey);
	
//	 패스워드 바꿀때 뭘 바꿀지 조건에 들어가는 id -> 혹시 사용할 수도 있을까봐 넣어놓았음
//	request.setAttribute("id", memId);
//	request.getRequestDispatcher("?????????? 경로 설정").forward(request, response);
	
	
	}

}

















