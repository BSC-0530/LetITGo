package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.service.RequestService;


@WebServlet("/info/requestList")
public class SelectRequestListServlet extends HttpServlet {

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		RequestService requestService = new RequestService();
		
		List<InsertRequestDTO> insertRequestList = requestService.joinList();
		
		String path ="";
		
		if(insertRequestList != null) {
			
			path = "/WEB-INF/views/admin/adminJoinRequest.jsp";
			request.setAttribute("insertRequestList", insertRequestList);
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	

}
