package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;

/**
 * Servlet implementation class NoticeDetailsServlet
 */
@WebServlet("/notice/details/servlet")
public class NoticeDetailsServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		PersonalInfoPolicyDTO noticeDetails = new PersonalInfoPolicyDTO();
		noticeDetails.setPostNo(postNo);
		
		String path="";
		path = "/WEB-INF/views/admin/adminNoticeViewDetails.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
