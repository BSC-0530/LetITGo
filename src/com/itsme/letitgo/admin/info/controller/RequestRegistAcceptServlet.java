package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.service.RequestJoinService;


@WebServlet("/info/accept")
public class RequestRegistAcceptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));
		int coMemNo = Integer.parseInt(request.getParameter("coMemNo"));
		
		RequestJoinService rJService = new RequestJoinService();
		
		int result1 = rJService.JoinRequest1(coReqNo);
		int result2 = rJService.JoinRequest2(coMemNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('기업회원가입을 승인하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('기업회원가입에 실패하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		}
		 
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

	


}
