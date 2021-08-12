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


@WebServlet("/company/jobPostingHistory/select")
public class SelectCoMyJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectCoMyJobPostingService selectCoMyJobPostingService = new SelectCoMyJobPostingService();

		// getSession에서 comMemNo 값 가져와서 이용 DTO에 담아서 전달해 coMemNo에 맞는 공고 조회
		SelectCoMyJobPostingDTO selectCoMyJobPostingDTO = new SelectCoMyJobPostingDTO();
		selectCoMyJobPostingDTO.setCoMemNo(2);
		
		Map<String, List<Object>> jp = selectCoMyJobPostingService.selectMyJobPosting(selectCoMyJobPostingDTO);
		
		
		request.setAttribute("allJobPosting", jp.get("allJobPosting"));
		request.setAttribute("recruitingJopPosting", jp.get("recruitingJopPosting"));
		request.setAttribute("requestJobPosting", jp.get("requestJobPosting"));
		
		System.out.println(jp.get("allJobPosting"));


		String path = "/WEB-INF/views/recruit/jobPostingHistory.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}



}