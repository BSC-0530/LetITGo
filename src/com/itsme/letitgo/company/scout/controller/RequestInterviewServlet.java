package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/company/scout/interview")
public class RequestInterviewServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		int result = new MainScoutListService().insertInterview(memNo);
		
		if(result > 0) {
			response.sendRedirect("/let/detail/browse/select");
		}
	}

}
