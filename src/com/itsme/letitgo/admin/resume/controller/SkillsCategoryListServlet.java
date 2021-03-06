package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;
import com.itsme.letitgo.admin.resume.service.SkillsCategoryService;

@WebServlet("/skillscategory/list")
public class SkillsCategoryListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<SkillsCategoryDTO> skillsCategoryList = new SkillsCategoryService().selectAllSkillsCategoryList(); 
		
		System.out.println(skillsCategoryList);
		
		String path = ""; 
		
		if(skillsCategoryList != null) {
			path = "/WEB-INF/views/admin/adminSkillsCategory.jsp"; 
			request.setAttribute("skillsCategoryList", skillsCategoryList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
