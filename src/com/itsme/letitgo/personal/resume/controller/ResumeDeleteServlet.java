package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/delete")
public class ResumeDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("selectedDeleteResumeNo"));
		System.out.println(resumeNo);
		
		int result = new ResumeService().deleteResume(resumeNo);
		
		String path = "";
		if(result > 6) {
			
			path = "/WEB-INF/views/resume/resumeList.jsp";	
		}
		
		response.sendRedirect("/let/resume/list");
		
	}

}
