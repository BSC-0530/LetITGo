package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;

@WebServlet("/admin/Category/Page")
public class adminCategoryPage extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		InquiryListService inquiryListService = new InquiryListService();
		
		List<InquiryCategoryDTO> inquiryCategory = inquiryListService.categoryListSelect();
		
		for(InquiryCategoryDTO asd : inquiryCategory) {
			System.out.println(asd);
		}
		
		
		String path = "";
		path="/WEB-INF/views/admin/adminCategoryPage.jsp";
		
		
		request.setAttribute("inquiryCategory", inquiryCategory);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
