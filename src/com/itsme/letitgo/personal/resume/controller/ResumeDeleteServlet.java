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
		
		int result = new ResumeService().deleteResume(resumeNo);
		
		
		if(result > 6) {
			response.sendRedirect("/let/resume/list");			
		}
		
		
	}

}
