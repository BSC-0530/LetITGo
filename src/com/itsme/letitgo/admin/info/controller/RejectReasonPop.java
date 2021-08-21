package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;

@WebServlet("/reject/reason/pop")
public class RejectReasonPop extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int reqNo =  Integer.parseInt(request.getParameter("reqNo"));
//		CoMemberAppHistoryDTO reason = new CoMemberAppHistoryDTO();
//		reason.setCoReqNo(reqNo);
		
		CoMemberAppHistoryDTO result = new RequestService().ReasionSelected(reqNo);
		String reason = result.getCoRejectReason();
		
		String path = "/WEB-INF/views/admin/adminRejectReason.jsp";
		
		request.setAttribute("reason", reason);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
