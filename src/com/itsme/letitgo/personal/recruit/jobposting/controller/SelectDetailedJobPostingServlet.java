package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/detail/jobPosting/select")
public class SelectDetailedJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int selectJobPostNo = Integer.parseInt(request.getParameter("selectJobPostNo"));
		
		SelectJobPostingService selectJobPostingService = new SelectJobPostingService();
		
		Map<String, Object> jp = selectJobPostingService.selectDetailedJobPosting(selectJobPostNo);
		
		
		System.out.println(jp.get("detailedJobPosting"));
		
		request.setAttribute("detailedJobPosting", jp.get("detailedJobPosting"));
		request.setAttribute("deteildeJpSkills", jp.get("deteildeJpSkills"));
		
		
		String path = "/WEB-INF/views/recruit/detailedJobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

}