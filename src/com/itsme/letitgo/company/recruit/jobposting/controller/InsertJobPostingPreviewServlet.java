package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
                 
        
		// parameter로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장하는 과정
		// coMemNo 는 session에 담긴 회원 번호를 가져와야 한다
		request.setCharacterEncoding("UTF-8");
		String jobPostTitle = null;
		List<String> selectSkills = new ArrayList<>();
		String[] getSkills = null;
		List<String> skillsList = new ArrayList<>();
		int jobNo = 0;
		String jobName = null;
		int jobPostMinExperience = Integer.parseInt(request.getParameter("jobPostMinExperience"));
		int jobPostMaxExperience = Integer.parseInt(request.getParameter("jobPostMaxExperience"));
		String jobPostContents = null;
		String qualificationRequirements = null;
		String preferentialMatters = null;
		String benefitAndWelfare = null;
		java.sql.Date jobPostDeadLine = null;
		
		if(request.getParameter("jobPostTitle") != null) {
			jobPostTitle = request.getParameter("jobPostTitle");
		} 
		if(request.getParameterValues("selectSkillsName") != null) {
			getSkills = request.getParameterValues("selectSkillsName");
			for(String i: getSkills) {
				selectSkills.add(i);
			}
			
		}
		if (request.getParameter("jobPostContents") != null) {
			jobPostContents = request.getParameter("jobPostContents");
		}	
		if (request.getParameter("jobPostDeadLine") != null) {
			jobPostDeadLine = java.sql.Date.valueOf(request.getParameter("jobPostDeadLine"));
		}
		if (request.getParameter("qualificationRequirements") != null) {
			qualificationRequirements = request.getParameter("qualificationRequirements");
		}

		if (request.getParameter("preferentialMatters") != null) {
			preferentialMatters = request.getParameter("preferentialMatters");
		}
		if (request.getParameter("benefitAndWelfare") != null) {
			benefitAndWelfare = request.getParameter("benefitAndWelfare");
		}
		if(jobPostMaxExperience > jobPostMaxExperience) {
			// 대소 비교 후 값 1,2  의 값 바꿔 저장
			int temp = 0;
			temp = jobPostMinExperience;
			jobPostMinExperience = jobPostMaxExperience;
			jobPostMaxExperience = temp;
		} 
		
		Map<String, String> filePath = new HashMap<>();
		
		filePath = service.selectFilePath(memberLoginDTO.getMemNo());
		
		request.setAttribute("memberloginDTO", memberLoginDTO);
		request.setAttribute("jobPostContents", jobPostContents);
		request.setAttribute("qualificationRequirements", qualificationRequirements);
		request.setAttribute("preferentialMatters", preferentialMatters);
		request.setAttribute("benefitAndWelfare", benefitAndWelfare);
		request.setAttribute("jobPostTitle", jobPostTitle);
		request.setAttribute("selectSkills", selectSkills);
		request.setAttribute("skillsList", skillsList);
		request.setAttribute("jobNo", jobNo);
		request.setAttribute("jobName", jobName);
		request.setAttribute("jobPostMinExperience", jobPostMinExperience);
		request.setAttribute("jobPostMaxExperience", jobPostMaxExperience);
		request.setAttribute("jobPostContents", jobPostContents);
		request.setAttribute("jobPostDeadLine", jobPostDeadLine);
		request.setAttribute("titleFilePath", filePath.get("titleFilePath"));
		request.setAttribute("logoFilePath", filePath.get("logoFilePath"));
		
		
		String path = "/WEB-INF/views/recruit/insertJobPostingPreviewBody.jsp";

		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
