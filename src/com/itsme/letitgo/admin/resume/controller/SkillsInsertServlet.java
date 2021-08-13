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
		
		String path = "/WEB-INF/views/admin/adminSkillsInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		/* int skillsNo = Integer.parseInt(request.getParameter("skillsNo")); */
		
		//입력한 값을 직접 DB에 저장되게끔??? 어케????
		String name = request.getParameter("name");
		int no = Integer.parseInt(request.getParameter("no"));
		
		SkillsDTO requestSkills = new SkillsDTO();
		/* requestSkills.setSkillsNo(3); */
		requestSkills.setName(name);
		requestSkills.setNo(no);
		
		//requestSkills 확인
		System.out.println("skillsController requestSkills : " + requestSkills);
		
		int result = new SkillsService().skillsInsert(requestSkills);
		
		//result값 확인
		System.out.println("skillsController result : " + result);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문을 돌려서 성공과 실패의 주소로 간다.
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "skillsInsert");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "기술 등록에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);	
	
	}

}














