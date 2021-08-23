package com.itsme.letitgo.admin.question.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;
import com.itsme.letitgo.admin.question.model.service.InquiryListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

/**
 * Servlet implementation class RequestInquiryServlet
 */
@WebServlet("/request/inquiry/servlet")
public class RequestInquiryServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		 MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		 
		 String kinds = comDTO1.getMemKinds();
		 
		 
		
		
		InquiryListService inquiryListService = new InquiryListService();
		
		List<InquiryCategoryDTO> categoryListSelect = inquiryListService.categoryListSelect();
		
		
		String path="";
		path="/WEB-INF/views/common/questionInquriy/userRequestInquriy.jsp";
		
		
		request.setAttribute("kinds", kinds);
		request.setAttribute("categoryListSelect", categoryListSelect);
		request.getRequestDispatcher(path).forward(request,response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
//		System.out.println(request.getParameter("inquiryTitle"));
//		System.out.println(request.getParameter("inquiryCategoryNo"));
//		System.out.println(request.getParameter("licenseDate"));
//		System.out.println(request.getParameter("email"));
//		System.out.println(request.getParameter("content"));
		
		String title = request.getParameter("inquiryTitle");
		int no = Integer.parseInt(request.getParameter("inquiryCategoryNo"));
		java.sql.Date date = java.sql.Date.valueOf(request.getParameter("licenseDate"));
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		
		InquiryListService inquiryListService = new InquiryListService();
		InquiryDTO inquiryDTO = new InquiryDTO();
//		
		inquiryDTO.setInquiryTitle(title);
		inquiryDTO.setInquiryDate(date);
		inquiryDTO.setInquiryEmail(email);
		inquiryDTO.setInquiryContents(content);
		inquiryDTO.setInquiryCategoryNo(no);
		
//		
		int result = inquiryListService.requestQuestionInsert(inquiryDTO);
//		
		if(result > 0) {
			
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8"); //한글이 인코딩
		PrintWriter out = response.getWriter();
		out.println("<script>");
		out.println("alert('문의를 성공적으로 전송했습니다.')");
		out.println("history.go(-2)");
		out.println("</script>");
		
		}
	}

}
