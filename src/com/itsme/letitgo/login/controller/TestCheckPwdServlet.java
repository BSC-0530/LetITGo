package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.MemberLoginService;

@WebServlet("/login/test/check/pwd")
public class TestCheckPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		List<MemberLoginDTO> pwdList = new MemberLoginService().selectAllPwdList();
		
		System.out.println(pwdList);
		
		String path = "";
		
		if(pwdList != null) {
			path = "/WEB-INF/views/admin/adminTestPwd.jsp";
			request.setAttribute("pwdList", pwdList);
		}
		request.getRequestDispatcher(path).forward(request, response);
	}



}
