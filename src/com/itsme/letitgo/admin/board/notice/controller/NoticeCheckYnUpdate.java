package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;

import com.google.gson.Gson;
import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.NoticeService;

/**
 * Servlet implementation class NoticeCheckYnUpdate
 */
@WebServlet("/notice/check/ynupdate")
public class NoticeCheckYnUpdate extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		String status = request.getParameter("postExposureStatus");
		
		PersonalInfoPolicyDTO updateStatus = new PersonalInfoPolicyDTO();
		
		System.out.println(postNo);
		System.out.println(status);
		
		updateStatus.setPostNo(postNo);
		
		if(status.equals("Y")) {
			String N = status.replace("Y", "N");
			updateStatus.setPostExposureStatus(N);
			
			
		}else if(status.equals("N")) {
			String Y = status.replace("N", "Y");
			updateStatus.setPostExposureStatus(Y);
			
		}
		
		int result = new NoticeService().updateStatus(updateStatus);
		
		
		String path="";
		
			response.setCharacterEncoding("UTF-8");
		if(result > 0) {
			path="/WEB-INF/views/admin/adminNoticepage.jsp";
			response.sendRedirect("/let/admin/notice/manger/servlet");
			
		}
		
	}

}
