package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostUpdateRejectService;


@WebServlet("/admin/post/update/reject/update")
public class UpdatePostUpdateRejectServlet extends HttpServlet {
	
	private int jobPostNo;
	private int jobPostReqNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));
		
		System.out.println("jobPostNo : " + jobPostNo); 
		System.out.println("jobPostReqNo : " + jobPostReqNo); 
		
		String path = "/WEB-INF/views/admin/adminPostUpdateRejectMessage.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String rejectMessage = request.getParameter("rejectMessage");	
		System.out.println("rejectMessage : " + rejectMessage); 

		UpdatePostUpdateRejectService updatePostRejectUpdateApp = new UpdatePostUpdateRejectService();	
	
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("jobPostNo", jobPostNo);
		map.put("jobPostReqNo", jobPostReqNo);
		
		int result1 = updatePostRejectUpdateApp.updatePostRejectRequest1(map);		
		int result2 = updatePostRejectUpdateApp.updatePostRejectRequest2(map);
		
		System.out.println("result1 : " + result1);
		System.out.println("result2 : " + result2);

		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('채용공고수정을 거절하셨습니다.'); location.href='../../updateRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고수정 거절을 실패하셨습니다.'); location.href='../../updateRequest/select';</script>");
		}
		 							
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
