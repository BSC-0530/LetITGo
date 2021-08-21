package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.itsme.letitgo.personal.regist.model.service.duplicateIdCheckService;

/* home -> 로그인 -> 개인회원가입 -> 중복확인 */
@WebServlet("/member/individual/idCheck")
public class MemberIdCheckServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/common/register/idCheckForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		
		duplicateIdCheckService service = new duplicateIdCheckService();
		
		/* 중복된 아이디가 있는지 확인 */
		int result = service.duplicateIdCheck(memId); 
		
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		if(result > 0) {
			out.println("0");
		} else {
			out.println("1");
		}
		
		out.close();

		
	}

}
