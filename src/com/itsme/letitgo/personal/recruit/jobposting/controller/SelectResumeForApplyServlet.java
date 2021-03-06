package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpResumeDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;


@WebServlet("/resumeForApply/select")
public class SelectResumeForApplyServlet extends HttpServlet {
	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");

        int memNo = memberLoginDTO.getMemNo();
        
		// 이력서 선택창으로 이동 할 때  detail 창에서 jobPostNo 
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		request.setAttribute("jobPostNo", jobPostNo);
		
		SelectJobPostingService service = new SelectJobPostingService();
		
		
		List<JpResumeDTO> resumeList = service.selectResumeForApplying(memNo);
		
		
		// List 에 담아온 리스트의 size가 0인지 여부에 따라 값을 담아준다 -> 이때 결과에 따라 페이지 다르게 넘겨주자
		if(resumeList.size() != 0) {
			request.setAttribute("resumeStatus", "Y");
			request.setAttribute("resumeList", resumeList);
			
		} else {
			
			request.setAttribute("resumeStatus", "N");
		}
		
		
		request.getRequestDispatcher("/WEB-INF/views/recruit/selectResumeForApply.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
