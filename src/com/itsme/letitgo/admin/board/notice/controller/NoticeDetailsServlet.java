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
 * Servlet implementation class NoticeDetailsServlet
 */
@WebServlet("/notice/details/servlet")
public class NoticeDetailsServlet extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NoticeService noticeservice = new NoticeService();
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		PersonalInfoPolicyDTO noticeDetails = noticeservice.selectDetailsNotice(postNo);
		
		System.out.println(noticeDetails);
		
		
		request.setAttribute("noticeDetails", noticeDetails);
		
		String path="";
		path = "/WEB-INF/views/admin/adminNoticeViewDetails.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		
		PersonalInfoPolicyDTO noticeModifyInsert = new PersonalInfoPolicyDTO();
		NoticeService noticeService = new NoticeService();
		
		int managerMemberNo = Integer.parseInt(request.getParameter("managerMemberNo"));
		System.out.println("asdsdakjs!@#(*!@&#" + request.getParameter("managerMemberNo"));
		
		String postTitle = request.getParameter("postTitle");
		
		java.sql.Date postRegistDate = java.sql.Date.valueOf(request.getParameter("postRegistrationDate"));
		
		String upper = request.getParameter("postExposureStatus");
		String postContent = request.getParameter("postContent");
		System.out.println("postExposureStatus"+upper);
		
		String postExposureStatus = upper.trim();
		System.out.println(postExposureStatus);
		
		
		noticeModifyInsert.setManagerMemberNo(managerMemberNo);
		noticeModifyInsert.setPostTitle(postTitle);
		noticeModifyInsert.setPostRegistrationDate(postRegistDate);
		noticeModifyInsert.setPostExposureStatus(postExposureStatus);
		noticeModifyInsert.setPostContent(postContent);
		
		String path="";
		
		int result = noticeService.noticeModifyInsert(noticeModifyInsert);
		
		response.setCharacterEncoding("UTF-8");
		
		if(result > 0) {
			response.sendRedirect("/let/admin/notice/manger/servlet");
		}
	}

}
