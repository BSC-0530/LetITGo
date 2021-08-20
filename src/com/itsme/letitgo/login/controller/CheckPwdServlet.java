package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.CheckPwdService;

@WebServlet("/login/checkpwd")
public class CheckPwdServlet extends HttpServlet {

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
//		CheckPwdService checkPwdService = new CheckPwdService();
//		
//		List<MemberLoginDTO> checkPwdList = CheckPwdService.selectCheckPwdList();
//		
//		for(MemberLoginDTO ml : checkPwdList) {
//			System.out.println(ml);
//		}
//		
//		String path = "/WEB-INF/views/common/login/checkPwd.jsp";
//		
//		request.setAttribute("checkPwdList", checkPwdList);
//		
//		request.getRequestDispatcher(path).forward(request, response);
//		
//		
//	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memPwd = request.getParameter("memPwd");
		 
		System.out.println("확인 : " + memPwd);
		
	}


}











