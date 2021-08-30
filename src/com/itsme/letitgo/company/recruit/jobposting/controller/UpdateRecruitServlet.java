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
import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/recruit/update")
public class UpdateRecruitServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("jobPostNo"));
		
		// 전달받은 jobPostNo값 저장
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		// 직무 전체를 담아올 DTO 인스턴스 생성 후 값 리턴 받음
		Map<String, List<Object>> recruitOption = service.selectRecruitOption();
		
		request.setAttribute("jobNameList", recruitOption.get("jobNameList"));
		request.setAttribute("skillsCategory", recruitOption.get("skillsCategoryList"));
		request.setAttribute("skillsList", recruitOption.get("skillsList"));
		request.setAttribute("jobPostNo", jobPostNo);
		
		// 등록된 공고 수정을 위해 입력했던 정보를 가져옴
		
		SelectCoMyJobPostingDTO dto = service.updateRecruit(jobPostNo);
		
		request.setAttribute("jobPostInfo", dto);

		
		String path = "/WEB-INF/views/recruit/updateJobPosting.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();

        MemberLoginDTO memberLoginDTO = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = memberLoginDTO.getMemNo();
		
		/* 최소경력과 최대경력의 경우 최소경력이 더 큰 경우 값을 바꿔서 저장 */
		int minExperience = Integer.parseInt(request.getParameter("jobPostMinExperience"));
		int maxExperience = Integer.parseInt(request.getParameter("jobPostMaxExperience"));
		if(minExperience > maxExperience) {
			int temp = 0;
			temp = minExperience;
			minExperience = maxExperience;
			maxExperience = temp;
		} 
		int updateJobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		String[] getSkills = request.getParameterValues("selectSkills");
		RequestJobPostingDTO dto = new RequestJobPostingDTO();
		
		/* 입력한 스킬 저장을 하기 위해 배열 인스턴스 생성 후 저장 */
		ArrayList<Integer> skillsList = new ArrayList<>();
		for(String i: getSkills) {
			skillsList.add(Integer.parseInt(i));
		}
		
		/* 입력한 정보를 DB에 저장하기 위해 dto에 담아준다. */
		dto.setCoMemNo(memNo);
		dto.setJobPostTitle(request.getParameter("jobPostTitle"));
		dto.setJobNo(Integer.parseInt(request.getParameter("jobNo")));
		dto.setJobPostDeadLine(java.sql.Date.valueOf(request.getParameter("jobPostDeadLine")));
		dto.setSkillsCodeList(skillsList);
		dto.setUpdateJobPostNo(updateJobPostNo);
		dto.setJobPostContents(request.getParameter("jobPostContents"));
		dto.setQualificationRequirements(request.getParameter("qualificationRequirements"));
		dto.setPreferentialMatters(request.getParameter("preferentialMatters"));
		dto.setBenefitAndWelfare(request.getParameter("benefitAndWelfare"));	
		dto.setJobPostMinExperience(minExperience);
		dto.setJobPostMaxExperience(maxExperience);
	
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		boolean result = service.RequestUpdateJobPosting(dto);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result) {
			redirectText.append("<script>alert('공고 수정 요청이 정상적으로 처리되었습니다.'); location.href='/let/company/jobPostingHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('공고 수정 요청에 실패하였습니다.'); location.href='/let/recruit/update';</script>");
		}
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}
}
