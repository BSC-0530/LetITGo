package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobFieldDTO;


@WebServlet("/recruit/insert")
public class InsertRecruitServlet extends HttpServlet {
       
	// 직무 조회필요, 기술 전체 조회 필요(카테고리를 조회하고 ajax를 통해서  카테고리별 기술 조회 필요), 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		// 직무 전체를 담아올 DTO 인스턴스 생성 후 값 리턴 받음
		List<JpJobFieldDTO> jobNameList = service.insertRecruit();
		
		System.out.println("Servlet jobNameList : " + jobNameList);
		
		request.setAttribute("jobNameList", jobNameList);
		
		String path = "/WEB-INF/views/recruit/insertJobPosting.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
