package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.RequestJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobFieldDTO;


@WebServlet("/recruit/insert")
public class InsertRecruitServlet extends HttpServlet {
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestJobPostingDTO dto = new RequestJobPostingDTO();
		
		// json String으로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장s하는 과정
		dto.setJobPostTitle(request.getParameter("jobPostTitle"));
		dto.setJobNo(Integer.parseInt(request.getParameter("jobNo")));
		dto.setJobPostMinExperience(Integer.parseInt(request.getParameter("jobPostMinExperience")));
		dto.setJobPostMaxExperience(Integer.parseInt(request.getParameter("jobPostMaxExperience")));
		dto.setJobPostContents(request.getParameter("jobPostContents"));
		dto.setJobPostEnrollDate(java.sql.Date.valueOf(request.getParameter("jobPostEnrollDate")));
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		boolean result = service.RequestInsertJobPosting(dto);
		
		

	}

}
