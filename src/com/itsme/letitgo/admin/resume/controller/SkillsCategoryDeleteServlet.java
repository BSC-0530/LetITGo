package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;
import com.itsme.letitgo.admin.resume.service.SkillsCategoryService;

@WebServlet("/skillscategory/delete")
public class SkillsCategoryDeleteServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int no = Integer.parseInt(request.getParameter("no"));
	
		SkillsCategoryDTO requestSkillsCategory = new SkillsCategoryDTO();
		
		requestSkillsCategory.setNo(no);
		
		int result = new SkillsCategoryService().skillsCategoryDelete(no);
		
		String path = ""; 
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "skillsCategoryDelete");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "기술 카테고리 삭제에 실패하셨습니다.");
		}
		
		response.sendRedirect("/let/skillscategory/list"); 
		
		
	}

}
