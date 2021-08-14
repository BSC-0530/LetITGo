package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.admin.resume.service.SkillsService;

@WebServlet("/skills/delete")
public class SkillsDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		int skillsNo = Integer.parseInt(request.getParameter("skillsNo"));
		/* int no = Integer.parseInt(request.getParameter("no")); */
		
		SkillsDTO requestSkills = new SkillsDTO();
		requestSkills.setSkillsNo(skillsNo);
		/* requestSkills.setNo(no); */
		
		//requestSkills 확인
		System.out.println("skillsController requetsSkills : " + requestSkills);
		
		/* int result2 = new SkillsService().skillsSkillsDelete(skillsNo); */ 	//새로운곳
		int result = new SkillsService().skillsDelete(skillsNo);
		/* int result1 = new SkillsService().skillsNoDelete(no); */
		
		String path = "";	//빈 문자열을 선언 후, 밑의 if문을 돌려서 성공과 실패의 주소로 간다.
		
		
		if(result > 0) {   // 전체 다합한 숫자 보다 1 작은 숫자를 조건을 걸어야함******
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "skillsDelete");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "기술(번호) 삭제에 실패하셨습니다.");
		}
		
		
		response.sendRedirect("/let/skills/list"); 
		
	}

}







