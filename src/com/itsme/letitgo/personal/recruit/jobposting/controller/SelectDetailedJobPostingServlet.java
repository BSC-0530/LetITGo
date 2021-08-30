package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectApplyingYnDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/detail/jobPosting/select")
public class SelectDetailedJobPostingServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = memberLoginDTO.getMemNo();
        int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
        
        /* 조회를 위해 dto에 값 set */
		SelectApplyingYnDTO dto = new SelectApplyingYnDTO();
		dto.setMemNo(memNo);
		dto.setJobPostNo(jobPostNo);
		
		/* 지원여부와 공고 상세정보 조회 */
		SelectJobPostingService service = new SelectJobPostingService();
		SelectApplyingYnDTO applyingResult = service.selectApplyingHistory(dto);
		Map<String, Object> jp = service.selectDetailedJobPosting(jobPostNo);
		
		request.setAttribute("detailedJobPosting", jp.get("detailedJobPosting"));
		request.setAttribute("deteildeJpSkills", jp.get("deteildeJpSkills"));
		request.setAttribute("applyingResult", applyingResult);
		request.setAttribute("titleFilePath", jp.get("titleFilePath"));
		request.setAttribute("logoFilePath", jp.get("logoFilePath"));
		
		String path = "/WEB-INF/views/recruit/detailedJobPosting.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
