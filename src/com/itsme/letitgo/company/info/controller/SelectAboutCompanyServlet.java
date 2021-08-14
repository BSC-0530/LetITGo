package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/aboutCompany/select")
public class SelectAboutCompanyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int coComNo = Integer.parseInt(request.getParameter("coComNo"));
		
		
		
		String path = "/WEB-INF/views/common/aboutCompany/aboutCompany.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	

}
