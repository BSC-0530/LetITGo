package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/list")
public class ResumeSelectListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<ResumeDTO> resumeList = new ResumeService().selectAllResumeList();
		
		System.out.println(resumeList);
		
		String path = "";
		
		if(resumeList != null) {
			path = "/WEB-INF/views/resume/resumeList.jsp";
			request.setAttribute("resumeList", resumeList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
