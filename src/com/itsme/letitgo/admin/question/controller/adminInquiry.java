package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;

@WebServlet("/admin/inquiry/select")
public class adminInquiry extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		InquiryListService service = new InquiryListService();
		
		List<InquiryDTO> InquirySelectHistory = service.InquirySelectHistory();
		
		for(InquiryDTO inq : InquirySelectHistory) {
			System.out.println("@@@@@@@@@@@@" + inq);
		}
	
		String path = "/WEB-INF/views/admin/adminInquiry.jsp";
		
		request.setAttribute("InquirySelectHistory", InquirySelectHistory);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		doGet(request, response);
	}

}
