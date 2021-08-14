package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/scout/personal/insert")
public class ScoutPersonalInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ResumeDTO> resumeList = new PersonalScoutService().selectResume();
		
		System.out.println("con resumeList : " + resumeList);
		
		String path = "";
		if(resumeList != null) {
			path = "/WEB-INF/views/scout/scoutPersonalInsert.jsp";
			request.setAttribute("resumeList", resumeList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		System.out.println("con resumeNo : " + resumeNo);
		
		int result = new PersonalScoutService().updateScoutStatus(resumeNo);
		
		String path = "";
		if(result > 0) {
			path = "/WEB-INF/views/scout/scoutPersonalComplete.jsp";
			response.sendRedirect("/let/scout/personal/complete");
		}
	}

}
