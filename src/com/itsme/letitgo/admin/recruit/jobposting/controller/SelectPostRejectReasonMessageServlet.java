package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.service.SelectPostRejectReasonMessageService;

/* 관리자 -> 공고등록요청 -> 거절사유상세보기 */
@WebServlet("/admin/post/rejectReason/select")
public class SelectPostRejectReasonMessageServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));

		SelectPostRejectReasonMessageService service = new SelectPostRejectReasonMessageService();
		
		/* 승인요청번호로 거절사유 조회 */
		String postInsertRejectMessage = service. SelectPostRejectReasonMessage(jobPostReqNo);

		String path="";
		path = "/WEB-INF/views/admin/InsertPostRejectReasonMessage.jsp";
		
		request.setAttribute("postInsertRejectMessage", postInsertRejectMessage);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
}
