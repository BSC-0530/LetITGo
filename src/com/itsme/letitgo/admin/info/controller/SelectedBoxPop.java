package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;

@WebServlet("/selected/box/pop")
public class SelectedBoxPop extends HttpServlet {
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int reqNo = Integer.parseInt(request.getParameter("coReqNo"));
		
		String path = "/WEB-INF/views/admin/selectedBoxForm.jsp";
		request.setAttribute("reqNo", reqNo);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int reqNo = Integer.parseInt(request.getParameter("reqNo"));
		String selected = request.getParameter("negative");
		String text = request.getParameter("text");
		
		System.out.println(selected);
		System.out.println(text);
		
		CoMemberAppHistoryDTO info = new CoMemberAppHistoryDTO();
		
		if(selected != null) {
			info.setCoReqNo(reqNo);
			info.setCoRejectReason(selected);
			int result = new RequestService().rejectReasonInsert(info);
			
		}else if(text != null){
			info.setCoReqNo(reqNo);
			info.setCoRejectReason(text);
			int result = new RequestService().rejectReasonTextInsert(info);
		}
		
	}
}
