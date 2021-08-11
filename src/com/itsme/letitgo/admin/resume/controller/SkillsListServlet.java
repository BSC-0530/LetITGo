package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.admin.resume.service.SkillsService;

@WebServlet("/skills/list")
public class SkillsListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		List<SkillsDTO> skillsList = new SkillsService().selectAllSkillsList();
		
		System.out.println(skillsList);
		
		String path = ""; ////빈 문자열을 선언 후, 밑의 if문 안의 주소값으로 가기
		
		if(skillsList != null) {
			path = "/WEB-INF/views/admin/??????.jsp"; //경로값 아직 지정 안함
			request.setAttribute("skillsList", skillsList);	
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
