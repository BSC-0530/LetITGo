package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;

@WebServlet("/admin/category/deleted")
public class AdminCategoryDeleted extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("삭제번호 : " + request.getParameter("code"));
		
		int categoryCode = Integer.parseInt(request.getParameter("code"));
		
		
		
		int result = new InquiryListService().InquiryCategoryDeleted(categoryCode);
		
		String path = "";
		if(result > 0) {
			path="/WEB-INF/views/admin/adminCategoryPage.jsp";
		}
		
		response.sendRedirect("/let/admin/Category/Page");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
