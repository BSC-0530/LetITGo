package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.service.ForgetService;


@WebServlet("/member/forgetId")
public class ForgetId extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/common/login/forgetId.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memEmail = request.getParameter("memEmail");
		
		System.out.println("memEmail : " + memEmail);
		
		ForgetService service = new ForgetService();
		
		String memId = service.selectFogetId(memEmail);
		
		System.out.println("memId : " + memId);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(memId == null) {
			
			redirectText.append("<script>alert('입력하신 이메일로 가입된 회원이 없습니다.'); location.href='/let/loginPage';</script>");			
					
		} else {
			
			redirectText.append("<script>\n")
            .append("alert('당신의 아이디는 ")
            .append(memId)
            .append(" 입니다.'); ")
            .append("location.href='/let/loginPage'; </script>");
						
		}
		 								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}
}
