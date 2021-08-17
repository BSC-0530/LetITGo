package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.RequestJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;


@WebServlet("/recruit/insert")
public class InsertRecruitServlet extends HttpServlet {
       
	// 직무 조회필요, 기술 전체 조회 필요(카테고리를 조회하고 ajax를 통해서  카테고리별 기술 조회 필요), 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		// 직무 전체를 담아올 DTO 인스턴스 생성 후 값 리턴 받음
		Map<String, List<Object>> recruitOption = service.selectRecruitOption();
		
		
		request.setAttribute("jobNameList", recruitOption.get("jobNameList"));
		request.setAttribute("skillsCategory", recruitOption.get("skillsCategoryList"));
		request.setAttribute("skillsList", recruitOption.get("skillsList"));
	
		
		String path = "/WEB-INF/views/recruit/insertJobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestJobPostingDTO dto = new RequestJobPostingDTO();
		
		// parameter로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장하는 과정
		// coMemNo 는 session에 담긴 회원 번호를 가져와야 한다
		request.setCharacterEncoding("UTF-8");
		String[] getSkills = request.getParameterValues("skills");
		
		ArrayList<Integer> skillsList = new ArrayList<>();
		
		for(String i: getSkills) {
			skillsList.add(Integer.parseInt(i));
			System.out.println("i" + Integer.parseInt(i));
			
		}
		
		System.out.println("skillsList : " + skillsList);
		
		dto.setCoMemNo(2);
		dto.setJobPostTitle(request.getParameter("jobPostTitle"));
		dto.setJobNo(Integer.parseInt(request.getParameter("jobNo")));
		dto.setJobPostContents(request.getParameter("jobPostContents"));
		dto.setJobPostDeadLine(java.sql.Date.valueOf(request.getParameter("jobPostDeadLine")));
		dto.setSkillsCodeList(skillsList);
		
		
		// 전달받은 경력에 입력된 value에 따라 db에 다르게 저장해주기 위해 예외처리
		
		// 최소 경력과 최대경력이 널이 아닐때만 변수에 초기화 하기
		
		int minExperience = Integer.parseInt(request.getParameter("jobPostMinExperience"));
		int maxExperience = Integer.parseInt(request.getParameter("jobPostMaxExperience"));
		if(minExperience > maxExperience) {
			// 대소 비교 후 값 1,2  의 값 바꿔 저장
			int temp = 0;
			temp = minExperience;
			minExperience = maxExperience;
			maxExperience = temp;
		} 
		dto.setJobPostMinExperience(minExperience);
		dto.setJobPostMaxExperience(maxExperience);
	
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		
		boolean result = service.RequestInsertJobPosting(dto);
		String path = "";
		if(result) {
			path = "/let/company/jobPostingHistory/select";
		} else {
			path = "/let/recruit/insert";
		}
		
		response.sendRedirect(path);
		
		
		
	}

}
