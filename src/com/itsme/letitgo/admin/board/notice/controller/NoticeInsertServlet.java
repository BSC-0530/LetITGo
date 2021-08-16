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
 * Servlet implementation class NoticeInsertServlet
 */
@WebServlet("/notice/insert/servlet")
public class NoticeInsertServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String path="";
		path="/WEB-INF/views/admin/adminNoticeInsert.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String postTitle = request.getParameter("postTitle");
		String contents = request.getParameter("contents");
		
		System.out.println(postTitle);
		System.out.println(contents);
		
		PersonalInfoPolicyDTO Notice = new PersonalInfoPolicyDTO();
		Notice.setPostTitle(postTitle);
		Notice.setPostContent(contents);
		
		int result = NoticeService.noticeInsert(Notice);
		
		if(result > 0) {
			System.out.println("등록성공");
		}else {
			System.out.println("시류ㅐ");
		}
		
		
		
		String path="";
		if(result > 0) {
			path="/WEB-INF/views/admin/adminNoticepage.jsp";
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/admin/notice/manger/servlet");
	}

}
