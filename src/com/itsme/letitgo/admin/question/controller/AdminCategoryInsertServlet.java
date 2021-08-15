package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;

@WebServlet("/admin/category/Insert/Servlet")
public class AdminCategoryInsertServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		String path="";
		path="/WEB-INF/views/admin/adminInquiryCategoryInsert.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		int inquiryCategoryNo =  Integer.parseInt(request.getParameter("inquiryCategoryNo"));
		String inquiryCategoryName = request.getParameter("inquiryCategoryName");
		System.out.println(request.getParameter("inquiryCategoryNo"));
		System.out.println( request.getParameter("inquiryCategoryName"));
		
		InquiryCategoryDTO insertCategory = new InquiryCategoryDTO();
		insertCategory.setInquiryCategoryNo(inquiryCategoryNo);
		insertCategory.setInquiryCategoryName(inquiryCategoryName);
		
		
		int result = new InquiryListService().inquiryCategoryInsert(insertCategory);
		String path="";
		if(result > 0) {
			path="/WEB-INF/views/admin/adminCategoryPage.jsp";
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/admin/Category/Page");
	}

}
