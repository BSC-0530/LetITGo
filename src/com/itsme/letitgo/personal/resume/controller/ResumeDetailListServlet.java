package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/detail")
public class ResumeDetailListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("selectedDetailResumeNo"));
		System.out.println("servlet req resumeno : " + resumeNo);
		Map<String, Object> detailMap = new ResumeService().selectDetailResumeList(resumeNo);
		
		String path = "";
		
		if(detailMap != null) {
			path = "/WEB-INF/views/resume/resumeDetailList.jsp";
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
