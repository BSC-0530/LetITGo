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
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int coReqNo = Integer.parseInt(request.getParameter("coReqNo"));	
		
		/* rJService 서비스 생성*/
		RequestJoinService rJService = new RequestJoinService();		
		
		/* 기업회원 가입 상태를 승인으로 변경*/
		int result1 = rJService.JoinRequest1(coReqNo);					
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0) {
			redirectText.append("<script>alert('기업회원가입을 승인하셨습니다.'); location.href='requestList';</script>");
		} else {
			redirectText.append("<script>alert('기업회원가입에 실패하셨습니다.'); location.href='requestList';</script>");
		}
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

	


}
