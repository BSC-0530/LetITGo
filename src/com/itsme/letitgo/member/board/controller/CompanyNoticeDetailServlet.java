package com.itsme.letitgo.member.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.NoticeService;

@WebServlet("/company/notice/detail")
public class CompanyNoticeDetailServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		NoticeService noticeservice = new NoticeService();
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		PersonalInfoPolicyDTO noticeDetails = noticeservice.selectDetailsNotice(postNo);
		
		System.out.println(noticeDetails);
		
		
		request.setAttribute("noticeDetails", noticeDetails);
		
		String path="";
		path = "/WEB-INF/views/member/company/companyNoticeDetail.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
