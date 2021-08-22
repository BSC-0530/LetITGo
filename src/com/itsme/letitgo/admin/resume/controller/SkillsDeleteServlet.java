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
		
		SkillsDTO requestSkills = new SkillsDTO();
		requestSkills.setSkillsNo(skillsNo);

		int result = new SkillsService().skillsDelete(skillsNo);
		
		String path = "";	
		
		
		if(result > 0) {  
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "skillsDelete");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "기술(번호) 삭제에 실패하셨습니다.");
		}
		
		response.sendRedirect("/let/skills/list"); 
		
	}

}







