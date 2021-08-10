package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.admin.resume.service.SkillsService;

@WebServlet("/skills/insert")
public class SkillsInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "경로 지정해주기";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		int skillsNo = Integer.parseInt(request.getParameter("skillsNo"));
		String name = request.getParameter("name");
		int no = Integer.parseInt(request.getParameter("no"));
		
		SkillsDTO requestSkills = new SkillsDTO();
		requestSkills.setSkillsNo(skillsNo);
		requestSkills.setName(name);
		requestSkills.setNo(no);
		
		//requestSkills 확인
		System.out.println("skillsController requestSkills : " + requestSkills);
		
		int result = new SkillsService().skillsInsert(requestSkills);
		
		//result값 확인
		System.out.println("skillsController result : " + result);
		
		String path = "경로 지정해주기";
		
		if(result > 0) {
			path = "성공 경로 지정해주기";
			request.setAttribute("성공코드", "skillsInsert");
		} else {
			path = "실패 경로 지정해주기";
			request.setAttribute("실패코드", "기술 등록에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);	
	
	}

}














