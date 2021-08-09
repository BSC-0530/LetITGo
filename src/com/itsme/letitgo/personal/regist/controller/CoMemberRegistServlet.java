package com.itsme.letitgo.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.dto.CoMemberDTO;
import com.itsme.letitgo.login.model.service.MemberService;

@WebServlet("/comember/regist")
public class CoMemberRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path ="";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
//		//이따 변수명 coMem으로 시작하게 만들기
//		private int memNo;			//기업회원번호
//		private String intro;		//회사 소개글
//		private String coNo;		//사업자 등록 번호
//		private String comName;		//기업 이름
//		private String ceoName;     //대표자 이름
//		private String address; 	//주소
//		private String coPhone; 	//사업장 전화번호
//		private String fax;			//사업장 팩스번호
//		private String sectors;		//업종
//		private String status;		//업태
		
		//개인과 기업이 달라서 원래의 변수명 앞에 기업은 앞에 co붙여줌
		String coMemId = request.getParameter("coMemId");
		String coMemEmail = request.getParameter("coMemEmail");
		String coMemPwd = request.getParameter("coMemPwd");
		String coMemName = request.getParameter("coMemName");
		String coMemPhone = request.getParameter("coMemPhone");	//'-'로 나눠 줄꺼면 -> .replace("-", "") 붙이기 (사용자가 '-'기호를 이용하여 전화번호를 입력하는 경우 통일시키기 위함) 
		String coMemKinds = request.getParameter("coMemKinds");
		java.sql.Date coMemEnrollDate = java.sql.Date.valueOf(request.getParameter("coMemEnrollDate"));
		String coMemEntYn = request.getParameter("coMemberEntYn");
		java.sql.Date coMemEntDate = java.sql.Date.valueOf(request.getParameter("coMemEntDate"));
		//아래는 기업 추가 정보
		String coIntro = request.getParameter("coIntro");
		String coCoNo = request.getParameter("coCoNo");
		String coComName = request.getParameter("coComName");
		String coCeoName = request.getParameter("coCeoName");  
		String coAddress = request.getParameter("zipcode") + "$" + request.getParameter("address1") + "$" + request.getParameter("address2");	//우편번호와 주소, 상세주소를 하나의 문자열로 저장하는데 주소에 보통 사용하지 않는 문자를 기준으로 합치기를 해야 나중에 split 할 수 있다.
		String coCoPhone = request.getParameter("coCoPhone");
		String coFax = request.getParameter("coFax");
		String coSectors = request.getParameter("coSectors");
		String coStatus = request.getParameter("coStatus");
			
		CoMemberDTO requestCoMember = new CoMemberDTO();
		requestCoMember.setId(coMemId);
		requestCoMember.setEmail(coMemEmail);
		requestCoMember.setPwd(coMemPwd);
		requestCoMember.setName(coMemName);
		requestCoMember.setPhone(coMemPhone);
		requestCoMember.setKinds(coMemKinds);
		requestCoMember.setEnrollDate(coMemEnrollDate);
		requestCoMember.setEntYn(coMemEntYn);
		requestCoMember.setEntDate(coMemEntDate);
		//아래는 기업추가 정보
		requestCoMember.setIntro("coIntro");
		requestCoMember.setCoNo("coCoNo");
		requestCoMember.setComName("coComName");
		requestCoMember.setCeoName("coCeoName");
		requestCoMember.setAddress("coAddress");
		requestCoMember.setCoPhone("coCoPhone");
		requestCoMember.setFax("coFax");
		requestCoMember.setSectors("coSectors");
		requestCoMember.setStatus("coStatus");
		
		// coMember에 대한 요청 확인
		System.out.println("coMemberCotroller requestCoMember :  " + requestCoMember);
		
		int result = new MemberService().registCoMember(requestCoMember);
		
		// result값 확인
		System.out.println("coMemberController result : " + result);
		
		String page = "";
		
		if(result > 0) {
			
			page = "";
					
			request.setAttribute("??????", "???????");
		}
		
	}

}























