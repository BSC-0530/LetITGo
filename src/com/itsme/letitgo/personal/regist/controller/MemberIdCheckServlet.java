//package com.itsme.letitgo.personal.regist.controller;
//
//import java.io.IOException;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.itsme.letitgo.personal.regist.model.service.MemberService;
//
//@WebServlet("/user/idCheck")
//public class MemberIdCheckServlet extends HttpServlet {
//	
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		String id = request.getParameter("id");
//		
//		MemberService ms = new MemberService();
//		
//		int result = ms.idCheck(id);
//		
//		response.getWriter().print((result > 0) ? "no" : "ok");
//	}
//
//	/**
//	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
//	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}
//
//}
