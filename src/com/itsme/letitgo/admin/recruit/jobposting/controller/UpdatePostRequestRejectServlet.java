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

import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostRequestRejectService;

/* 관리자 -> 공고등록요청 -> 거절 */
@WebServlet("/admin/post/reject/update")
public class UpdatePostRequestRejectServlet extends HttpServlet {
	
	private int jobPostNo;
	private int jobPostReqNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));

		String path = "/WEB-INF/views/admin/adminPostRejectMessage.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String rejectMessage = request.getParameter("rejectMessage");

		UpdatePostRequestRejectService updatePostRejectRequestApp = new UpdatePostRequestRejectService();	
	
		/* 재용공고번호, 요청번호, 거절메세지 묶어서 전달 */
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("jobPostNo", jobPostNo);
		map.put("jobPostReqNo", jobPostReqNo);
		
		/* 채용공고의 분류를 거절된 공고로 변경 */
		int result1 = updatePostRejectRequestApp.updatePostRejectRequest1(map);
		
		/* 채용공고 승인여부이력 응답구분을 거절로 변경 */
		int result2 = updatePostRejectRequestApp.updatePostRejectRequest2(map);
		
		System.out.println("result1 : " + result1);
		System.out.println("result2 : " + result2);

		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('채용공고등록을 거절하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고등록 거절을 실패하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		}
		 							
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}
}
