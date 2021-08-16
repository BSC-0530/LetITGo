package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.NoticeService;

/**
 * Servlet implementation class NoticeCheckYnUpdate
 */
@WebServlet("/notice/check/ynupdate")
public class NoticeCheckYnUpdate extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println(request.getParameter("ynNo"));
		System.out.println(request.getParameter("ynstatus"));
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");
////		System.out.println(request.getParameter("ynNo"));
////		System.out.println(request.getParameter("ynstatus"));
//		System.out.println(request.getParameter("notice"));
//		
////		int no = Integer.parseInt(request.getParameter("ynNo"));
////		String yn = request.getParameter("ynstatus");
//		
//		PersonalInfoPolicyDTO updateStatus = new PersonalInfoPolicyDTO();
////		updateStatus.setPostNo(no);
////		updateStatus.setPostExposureStatus(yn);
//		
//		int result = new NoticeService().updateStatus(updateStatus);
		
		
		
		
	}

}
