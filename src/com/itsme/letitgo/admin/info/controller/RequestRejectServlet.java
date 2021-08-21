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



@WebServlet("/admin/post/reject/InsertUpdate")
public class RequestRejectServlet extends HttpServlet {

	private int coReqNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
		
		String path = "/WEB-INF/views/admin/adminJoinReject.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String rejectMessage = request.getParameter("rejectMessage");	
		
		RequestJoinRejectService rjrService = new RequestJoinRejectService();
		
		Map<String, Object> map = new HashMap<>();		//hash map 객체 생성 -> Map은 인터페이스이기 때문에 객체생성이 불가능하여 자식인 HashMap을 생성
		map.put("rejectMessage", rejectMessage);		//map에 view에 썼던  키값과 value값을 가져온다.
		map.put("coReqNo", coReqNo);
		
		
		int result1 = rjrService.joinRejectRequest1(map);
		int result2 = rjrService.joinRejectRequest2(map);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('기업회원 가입 거절하였습니다.'); location.href='../../updateRequest/select';</script>\"");
		}else {
			redirectText.append("<script>alert('기업회원 가입 거절을 실패하셨습니다.');location.href='../../updateRequest/select';</script>\"");
		}
		
		response.setContentType("/WEB-INF/views/admin/adminJoinDetail.jsp");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
		
	}

}
