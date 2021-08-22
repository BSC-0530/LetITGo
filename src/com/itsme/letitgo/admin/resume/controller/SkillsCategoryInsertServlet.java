package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;
import com.itsme.letitgo.admin.resume.service.SkillsCategoryService;

@WebServlet("/skillscategory/insert")
public class SkillsCategoryInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/WEB-INF/views/admin/adminSkillsCategoryInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String name = request.getParameter("name");
		int upperNo = Integer.parseInt(request.getParameter("upperNo"));
		
		SkillsCategoryDTO requestSkillsCategory = new SkillsCategoryDTO();
		
		requestSkillsCategory.setName(name);
		requestSkillsCategory.setUpperNo(upperNo);
		
		int result = new SkillsCategoryService().skillsCategoryInsert(requestSkillsCategory);
		
		String path = ""; 
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "skillsCategoryInsert"); 
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "기술 카테고리 등록에 실패하셨습니다.");
		}
		
		response.sendRedirect("/let/skillscategory/list");
		
	}

}







