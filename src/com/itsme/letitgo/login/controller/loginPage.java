package com.itsme.letitgo.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginPage")
public class loginPage extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 비로그인 상태에서 다른화면에서 로그인 버튼을 누르면 로그인페이지로 이동한다. */
		String path = "/WEB-INF/views/common/login/login.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
