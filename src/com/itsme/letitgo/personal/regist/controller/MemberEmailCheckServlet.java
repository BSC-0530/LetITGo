package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
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

import com.google.gson.Gson;

/* home -> -> 개인/기업회원가입  -> 인증번호전송 */
@WebServlet("/member/whole/email")
public class MemberEmailCheckServlet extends HttpServlet {

	private String AuthenticationKey = null;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 보내는 사람정보 작성 */
		String memEmail = request.getParameter("memEmail");
		String host = "smtp.naver.com";
		String user = "hsjung3678@naver.com";
		String password = "rhakqjsro12";
		String name = "정현수";

		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", 465);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.enable", "true");

		/* 인증번호로 보낼 난수 생성 */
		StringBuffer temp = new StringBuffer();
		Random rnd = new Random();

		for(int i = 0; i < 10; i++) {

			int rIndex = rnd.nextInt(3);
			switch(rIndex) {
			case 0: temp.append((char) ((int) (rnd.nextInt(26)) + 97)); break;
			case 1: temp.append((char) ((int) (rnd.nextInt(26)) + 65)); break;
			case 2: temp.append((rnd.nextInt(10))); break;
			}

		}

		AuthenticationKey = temp.toString();
		System.out.println(AuthenticationKey); //삭제해야함

		Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(user,password);
			}
		});

		//email 전송
		try {
			MimeMessage msg = new MimeMessage(session);
			msg.setFrom(new InternetAddress(user, name));
			msg.addRecipient(Message.RecipientType.TO, new InternetAddress(memEmail));

			//메일 제목
			msg.setSubject("안녕하세요 Let it Go 인증 메일입니다.");
			//메일 내용
			msg.setText("인증 번호는 :"+temp);

			Transport.send(msg);

		} catch (Exception e) {
			e.printStackTrace();
		}

		String jsonString = new Gson().toJson(AuthenticationKey);

		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.print(jsonString);
		out.flush();
		out.close();



	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 보낸 인증번호와 작성한 인증번호가 같은지 true or false로 전달 */
		String certificationNumber = request.getParameter("certificationNumber");		
		String jsonString = new Gson().toJson(AuthenticationKey.equals(certificationNumber));

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		out.print(jsonString);
		out.flush();
		out.close();

	}

}
