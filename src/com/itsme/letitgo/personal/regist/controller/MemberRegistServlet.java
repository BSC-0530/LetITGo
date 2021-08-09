package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.service.MemberService;

@WebServlet("/member/regist")
public class MemberRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path ="";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
//		private int no;
//		private String id;
//		private String email;
//		private String pwd;
//		private String name;
//		private String phone;
//		private String kinds;
//		private Date enrollDate;
//		private String entYn;
//		private Date entDate;
		
		//개인과 기업이 달라서 원래의 변수명 앞에 개인은 mem붙여줌
		String memId = request.getParameter("memId");
		String memEmail = request.getParameter("memEmail");
		String memPwd = request.getParameter("memPwd");
		String memName = request.getParameter("memName");
		String memPhone = request.getParameter("memPhone");	//'-'로 나눠 줄꺼면 -> .replace("-", "") 붙이기
		String memKinds = request.getParameter("memKinds");
		java.sql.Date memEnrollDate = java.sql.Date.valueOf(request.getParameter("memEnrollDate"));
		String memEntYn = request.getParameter("memberEntYn");
		java.sql.Date memEntDate = java.sql.Date.valueOf(request.getParameter("memEntDate"));
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setId(memId);
		requestMember.setEmail(memEmail);
		requestMember.setPwd(memPwd);
		requestMember.setName(memName);
		requestMember.setPhone(memPhone);
		requestMember.setKinds(memKinds);
		requestMember.setEnrollDate(memEnrollDate);
		requestMember.setEntYn(memEntYn);
		requestMember.setEntDate(memEntDate);
		
		// 컨트롤러에서 requestMember가 잘 나오는지 확인하기 위함
		System.out.println("memberController requestMember : " + requestMember);
		
		int result = new MemberService().registMember(requestMember);
		
		// 컨트롤러에서 result값이 잘 나오는지 확인하기 위함
		System.out.println("memberController result : " + result);
		
		String path = "";
		
		if(result > 0) {
			path = "";
			request.setAttribute("?????", "??????");		
		} else {
			path = "";
			request.setAttribute("?????", "??????");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}







