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
		
		/*RequestService 생성 한다.*/
		RequestService requestService = new RequestService();
		
		/*RequestServicedp InsertRequestDTO를 담는 joinList 메소드를 담는다.*/
		List<InsertRequestDTO> insertRequestList = requestService.joinList();
		
		String path ="";
		
		/*insertRequestList가 null이 아닐경우 adminJoinRequest.jsp로 간다.*/
		if(insertRequestList != null) {
			
			path = "/WEB-INF/views/admin/adminJoinRequest.jsp";
			
			/*JSP에 값을 넘겨주기위해 속성 값을 넣어 준다.*/
			request.setAttribute("insertRequestList", insertRequestList);
		}
		/*path에 있는 주소로 보낸다.*/
		request.getRequestDispatcher(path).forward(request, response);
	}

	

}
