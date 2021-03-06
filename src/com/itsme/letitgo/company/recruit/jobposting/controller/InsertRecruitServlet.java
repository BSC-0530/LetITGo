package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.RequestJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/recruit/insert")
public class InsertRecruitServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		/* 직무, 스킬 카테고리 조회  */
		Map<String, List<Object>> recruitOption = service.selectRecruitOption();
		
		request.setAttribute("jobNameList", recruitOption.get("jobNameList"));
		request.setAttribute("skillsCategory", recruitOption.get("skillsCategoryList"));
		
		String path = "/WEB-INF/views/recruit/insertJobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");

        int memNo = memberLoginDTO.getMemNo();
        
		RequestJobPostingDTO dto = new RequestJobPostingDTO();
		
		// parameter로 받은 값들을 DB로 전달하기 위해 getParameter로 꺼내 DTO의 필드에 값을 저장하는 과정
		// coMemNo 는 session에 담긴 회원 번호를 가져와야 한다
		String[] getSkills = request.getParameterValues("selectSkills");
		
		ArrayList<Integer> skillsList = new ArrayList<>();
		
		for(String i: getSkills) {
			skillsList.add(Integer.parseInt(i));
		}
		dto.setCoMemNo(memNo);
		dto.setJobPostTitle(request.getParameter("jobPostTitle"));
		dto.setJobNo(Integer.parseInt(request.getParameter("jobNo")));
		dto.setJobPostDeadLine(java.sql.Date.valueOf(request.getParameter("jobPostDeadLine")));
		dto.setSkillsCodeList(skillsList);
		
		
		dto.setJobPostContents(request.getParameter("jobPostContents"));
		dto.setQualificationRequirements(request.getParameter("qualificationRequirements"));
		dto.setPreferentialMatters(request.getParameter("preferentialMatters"));
		dto.setBenefitAndWelfare(request.getParameter("benefitAndWelfare"));
		
		
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
		
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result) {
			redirectText.append("<script>alert('공고 등록 요청이 정상적으로 처리되었습니다.'); location.href='/let/company/jobPostingHistory/select';</script>");
			

		
		} else {
			redirectText.append("<script>alert('공고 등록 요청에 실패하였습니다.'); location.href='/let/recruit/insert';</script>");
		}
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}

}
