package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/detail/browse/select")
public class ScoutDetailResumeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		System.out.println(resumeNo);
		Map<String, Object> detailMap = new MainScoutListService().selectDetailResume(resumeNo);

		int result = new MainScoutListService().updateDetailStatus(resumeNo);
		
		String path = "";
		
		if(detailMap != null) {
			path = "/WEB-INF/views/scout/scoutDetailResume.jsp";
			request.setAttribute("detailResume", detailMap.get("detailResume"));
			request.setAttribute("detailCareer", detailMap.get("detailCareer"));
			request.setAttribute("detailSkills", detailMap.get("detailSkills"));
			request.setAttribute("detailIntroContent", detailMap.get("detailIntroContent"));
			request.setAttribute("detailAward", detailMap.get("detailAward"));
			request.setAttribute("detailEdu", detailMap.get("detailEdu"));
			request.setAttribute("detailLicense", detailMap.get("detailLicense"));
			request.setAttribute("detailJobField", detailMap.get("detailJobField"));
			request.setAttribute("detailPot", detailMap.get("detailPot"));
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
