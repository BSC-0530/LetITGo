package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/company/scout/wish/insert")
public class CompanyAddWishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		String inputPage = request.getParameter("inputPage");
		System.out.println(inputPage);
		
		int result = new MainScoutListService().insertWishList(resumeNo);
		
		request.setAttribute("number", resumeNo);
		String path = "";
		if(result > 0 && inputPage.equals("simple")) {
			System.out.println("============== simple ============");
			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			request.getRequestDispatcher(path).forward(request, response);
			
		} else if(result > 0 && inputPage == "detail" ) {
			path = "/WEB-INF/views/scout/scoutDetailResume.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
