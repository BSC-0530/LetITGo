package com.itsme.letitgo.company.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.regist.model.service.duplicateIdCheckService;

@WebServlet("/member/coporate/idCheck2")
public class MemberIdCheckServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/common/register/CoidCheckForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("cmemId");
		System.out.println("memId : " + memId);
		duplicateIdCheckService service = new duplicateIdCheckService();
		
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
