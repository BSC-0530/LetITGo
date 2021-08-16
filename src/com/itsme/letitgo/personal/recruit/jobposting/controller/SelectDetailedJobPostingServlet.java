package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectApplyingYnDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/detail/jobPosting/select")
public class SelectDetailedJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// if문을 통해서 회원번호, 공고번호를 가져온다. 회원번호와 공고 번호를 넘겨줘서 이력서의 지원 여부를 확인한다. 지원여부를 가져온다. 이 때 지원여부가 	
		SelectApplyingYnDTO dto = new SelectApplyingYnDTO();
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		dto.setMemNo(3);
		dto.setJobPostNo(jobPostNo);
		
		SelectJobPostingService service = new SelectJobPostingService();
		
		// 지원여부 db에서 조회한다.
		SelectApplyingYnDTO applyingResult = service.selectApplyingHistory(dto);
		
		// jobPostring에 대한 상세 정보를 db에서 조회한다.
		Map<String, Object> jp = service.selectDetailedJobPosting(jobPostNo);
		
		
		request.setAttribute("detailedJobPosting", jp.get("detailedJobPosting"));
		request.setAttribute("deteildeJpSkills", jp.get("deteildeJpSkills"));
		request.setAttribute("applyingResult", applyingResult);
		
		
		String path = "/WEB-INF/views/recruit/detailedJobPosting.jsp";

		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
