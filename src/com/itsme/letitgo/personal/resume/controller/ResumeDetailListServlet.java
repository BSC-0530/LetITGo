package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/detail")
public class ResumeDetailListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("selectedDetailResumeNo"));
		System.out.println("servlet req resumeno : " + resumeNo);
		List<DetailResumeDTO> detailResume = new ResumeService().selectDetailResumeList(resumeNo);
		
		System.out.println(detailResume);
		String path = "";
		
		if(detailResume != null) {
			path = "/WEB-INF/views/resume/resumeDetailList.jsp";
			request.setAttribute("detailList", detailResume);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
