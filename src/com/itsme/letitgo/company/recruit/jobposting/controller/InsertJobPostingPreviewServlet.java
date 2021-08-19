package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/previewJobPosting")
public class InsertJobPostingPreviewServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
           
		// parameter로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장하는 과정
		// coMemNo 는 session에 담긴 회원 번호를 가져와야 한다
		request.setCharacterEncoding("UTF-8");
		String jobPostTitle = null;
		ArrayList<Integer> skillsList = new ArrayList<>();
		String[] getSkills = null;
		int jobNo = 0;
		String jobName = null;
		String jobPostMinExperience = null;
		String jobPostMaxExperience = null;
		String jobPostContents = null;
		java.sql.Date jobPostDeadLine = null;
		
		if(request.getParameter("jobPostTitle") != null) {
			jobPostTitle = request.getParameter("jobPostTitle");
		} else if(request.getParameterValues("selectSkills") != null) {
			getSkills = request.getParameterValues("selectSkills");
			
			for(String i: getSkills) {
				skillsList.add(Integer.parseInt(i));
			}
			
		} else if (request.getParameter("jobNo") != null) {
			jobNo = Integer.parseInt(request.getParameter("jobNo"));
			SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
			jobName = service.selectJobName(jobNo);
			System.out.println("@@@@@@@@@@@@@@@@@@@@@@"+jobName);
			
		} else if (request.getParameter("jobPostMinExperience") != null) {
			jobPostMinExperience = request.getParameter("jobPostMinExperience");
			
		} else if (request.getParameter("jobPostMaxExperience") != null) {
			jobPostMaxExperience = request.getParameter("jobPostMaxExperience");
			
		} else if (request.getParameter("jobPostContents") != null) {
			jobPostContents = request.getParameter("jobPostContents");
			
		} else if (request.getParameter("jobPostDeadLine") != null) {
			jobPostDeadLine = java.sql.Date.valueOf(request.getParameter("jobPostDeadLine"));
			
		}
		
        request.setAttribute("memberloginDTO", memberLoginDTO);
		request.setAttribute("jobPostTitle", jobPostTitle);
		request.setAttribute("skillsList", skillsList);
		request.setAttribute("jobPostContents", jobPostContents);
		request.setAttribute("jobNo", jobNo);
		request.setAttribute("jobName", jobName);
		request.setAttribute("jobPostMinExperience", jobPostMinExperience);
		request.setAttribute("jobPostMaxExperience", jobPostMaxExperience);
		request.setAttribute("jobPostContents", jobPostContents);
		request.setAttribute("jobPostDeadLine", jobPostDeadLine);
		
		
		String path = "/WEB-INF/views/recruit/insertJobPostingPreviewBody.jsp";

		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
