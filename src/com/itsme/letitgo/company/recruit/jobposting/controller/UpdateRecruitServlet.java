package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;

/**
 * Servlet implementation class UpdateRecruitServlet
 */
@WebServlet("/recruit/update")
public class UpdateRecruitServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("jobPostNo"));
		
		// 전달받은 jobPostNo값 저장
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		// 직무 전체를 담아올 DTO 인스턴스 생성 후 값 리턴 받음
		Map<String, List<Object>> recruitOption = service.selectRecruitOption();
		
		request.setAttribute("jobNameList", recruitOption.get("jobNameList"));
		request.setAttribute("skillsCategoryList", recruitOption.get("skillsCategoryList"));
		request.setAttribute("skillsList", recruitOption.get("skillsList"));
		
		// 등록된 공고 수정을 위해 입력했던 정보를 가져옴
		
		SelectCoMyJobPostingDTO dto = service.updateRecruit(jobPostNo);
		
		System.out.println(dto);
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
}
