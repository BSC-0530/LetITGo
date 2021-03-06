package com.itsme.letitgo.company.recruit.applicant.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.common.paging.Pagenation;
import com.itsme.letitgo.common.paging.SelectCriteria;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantResultDTO;
import com.itsme.letitgo.company.recruit.applicant.model.service.RecruitApplicantService;


@WebServlet("/applicant/select")
public class SelectApplicantServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		request.setAttribute("jobPostNo", jobPostNo);
		
		ApplicantDTO requestDTO = new ApplicantDTO();		
		requestDTO.setJobPostNo(jobPostNo);

		RecruitApplicantService service = new RecruitApplicantService();
		int totalCount = service.selectTotalCount(requestDTO);
		int pageNo = 1;
		
		/* 0보다 작은 숫자값을 입력해도 1페이지를 보여준다 */
		if(pageNo <= 0) {
			pageNo = 1;
		}
		/* 한 페이지에 보여 줄 게시물 수 */
		int limit = 10;	
		/* 한 번에 보여질 페이징 버튼의 갯수 */
		int buttonAmount = 5;
		
		SelectCriteria selectCriteria = Pagenation.getSelectCriteria(pageNo, totalCount, limit, buttonAmount);
		requestDTO.setSelectCriteria(selectCriteria);
		
		/* 받아올게 이력 서별 스킬들을 가져와야되고 그거랑 이력서 dto에 담긴 내용들을 가져와야한다. */
		ApplicantResultDTO applicantResult = new ApplicantResultDTO();
		
		if(applicantResult != null) {
			applicantResult = service.selectApplicant(requestDTO);
		}
		applicantResult.setSelectCriteria(selectCriteria);
		
		String path = "";
		
		if(applicantResult != null) {
			request.setAttribute("applicantResult", applicantResult);
			request.setAttribute("selectCriteria", selectCriteria);
			
		}
		path = "/WEB-INF/views/recruit/selectApplicantList.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
