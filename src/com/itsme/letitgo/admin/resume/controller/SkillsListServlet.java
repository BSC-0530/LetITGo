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
		
		String path = ""; 
		
		if(skillsList != null) {
			path = "/WEB-INF/views/admin/adminSkills.jsp"; 
			request.setAttribute("skillsList", skillsList);	
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
