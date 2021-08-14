package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.service.RequestJoinRejectService;



@WebServlet("/info/reject")
public class RequestRejectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private int coReqNo;
	private int coMemNo;
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
		coMemNo = Integer.parseInt(request.getParameter("coMemNo"));
		
		String path = "";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String rejectMessage = request.getParameter("rejectMessage");	
		
		RequestJoinRejectService rjrService = new RequestJoinRejectService();
		
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("coReqNo", coReqNo);
		map.put("coMemNo", coMemNo);
		
		int result1 = rjrService.joinRejectRequest1(map);
		int result2 = rjrService.joinRejectRequest2(map);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("");
		}else {
			redirectText.append("");
		}
		
		response.setContentType("");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}

}
