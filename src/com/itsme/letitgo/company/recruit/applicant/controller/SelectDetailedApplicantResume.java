package com.itsme.letitgo.company.recruit.applicant.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.SelectDetailedResumeDTO;
import com.itsme.letitgo.company.recruit.applicant.model.service.RecruitApplicantService;


@WebServlet("/applicantResume/select")
public class SelectDetailedApplicantResume extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RecruitApplicantService service = new RecruitApplicantService();
		
		/* 전달받은 값 파라미터에서 꺼내기 */
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		ApplicantDTO updateDTO = new ApplicantDTO();
		updateDTO.setJobPostNo(jobPostNo);
		updateDTO.setResumeNo(resumeNo);
		
		SelectDetailedResumeDTO resultResume = new SelectDetailedResumeDTO();
		
		/* service 호출을 통해 이력서 상세 내용에 대한 dto 반환받기 */
		resultResume = service.selectDetailedApplicantResume(resumeNo);
		
		String path ="";
		if(resultResume != null) {
			
			/* 이력서 번호를 이용해서 이력서 열람상태가 열람으로 변경하기 */
			int updateResult = service.updateBrowesStatus(updateDTO);
			
			request.setAttribute("resultResume", resultResume);
			path = "/WEB-INF/views/recruit/detailedApplicant.jsp";
		} else {
			
			path = "/WEB-INF/views/recruit/selectApplicantList.jsp";
		}
		
		request.getRequestDispatcher(path).forward(request, response);

		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
