package com.itsme.letitgo.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.TestCheckPwdService;

@WebServlet("/login/test/check/pwd")
public class TestCheckPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//비번 받아와야하니까 회원번호로 해보기
//		int memNo = Integer.parseInt(request.getParameter("memNo"));
//		System.out.println("해당회원 번호 : " + memNo);
		
		
		
		String memNo = request.getParameter("memNo");
		System.out.println("패스워드 요청 : " + memNo);
		
		MemberLoginDTO testCheckPwd = new TestCheckPwdService().selectPwdList(memNo);
		System.out.println("서블렛 : " + testCheckPwd);
		
		//
//		HttpSession session = request.getSession();
//
//        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
//
//        int memNo = dto.getMemNo();
		
		
		
		String path = "";
		
		if(testCheckPwd != null) {
			path = "/WEB-INF/views/admin/adminTestPwd.jsp";
			request.setAttribute("testCheckPwd", testCheckPwd);
		}
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
		
		
		
//		List<MemberLoginDTO> pwdList = new TestCheckPwdService().selectAllPwdList();
//		
//		System.out.println(pwdList);
//		
//		String path = "";
//		
//		if(pwdList != null) {
//			path = "/WEB-INF/views/admin/adminTestPwd.jsp";
//			request.setAttribute("pwdList", pwdList);
//		}
//		request.getRequestDispatcher(path).forward(request, response);
	
	}



}
