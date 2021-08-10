package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectAllJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;


@WebServlet("/member/allJobPosting/select")
public class SelectAllJobPostingServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//JobPostingAndAddInfoDTO jpAndInfo = new JobPostingAndAddInfoDTO();
		
		SelectJobPostingService selectJobPostingService = new SelectJobPostingService();
		
		List<SelectAllJobPostingDTO> jpAndInfo = selectJobPostingService.selectAllJobPosting();
		
		System.out.println("Servlet jpAndInfo : " + jpAndInfo);
		
		request.setAttribute("jobPostingList", jpAndInfo);
		

		String path = "/WEB-INF/views/recruit/jobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
