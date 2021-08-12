package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CompanyScoutListSelect
 */
@WebServlet("/Company/Scout/List/Select")
public class CompanyScoutListSelect extends HttpServlet {
       
//@#$@#$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//마이페이지 스카우트 임@@@@@@@@@@@ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		String path = "/WEB-INF/views/member/company/scoutMyPage.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
