package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;


@WebServlet("/admin/Answer/Servlet")
public class AdminAnswerServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int num = Integer.parseInt(request.getParameter("num"));
			
			InquiryListService inquiryListService = new InquiryListService();
			
			
			List<InquiryDTO> answerInquiry = inquiryListService.answerInquiry(num);
			
			for(InquiryDTO asd : answerInquiry) {
				System.out.println(asd);
			}
			
		
			String path="";
			path="/WEB-INF/views/admin/adminAnswerPage.jsp";	
			
			request.setAttribute("answerInquiry", answerInquiry);
			request.setAttribute("num", num);
			request.getRequestDispatcher(path).forward(request, response);
			
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int num = Integer.parseInt(request.getParameter("num"));
		System.out.println(Integer.parseInt(request.getParameter("num")));
		System.out.println(request.getParameter("ansContent"));
		
		InquiryListService inquiryListService = new InquiryListService();
		InquiryDTO inquiryDTO = new InquiryDTO();
		
		String content = request.getParameter("ansContent");
		
		inquiryDTO.setInquiryAnsContent(content);
		inquiryDTO.setInquiryNo(num);
		
//		List<InquiryDTO> inquiryAnswerContent =  new ArrayList<InquiryDTO>();
//		inquiryAnswerContent.add(inquiryDTO);
//		
		int result = inquiryListService.inquiryAnswerContent(inquiryDTO);
		String path="";
		
		if(result > 0) {
			path="/WEB-INF/views/admin/adminInquiry.jsp";
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/admin/inquiry/select");
		
	}

}
















