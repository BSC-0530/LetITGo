package com.itsme.letitgo.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.MemberLoginService;

@WebServlet("/member/login")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		MemberLoginDTO requestMember = new MemberLoginDTO();
		requestMember.setMemId(memId);
		requestMember.setMemPwd(memPwd);

		System.out.println(requestMember);
		
		MemberLoginService memberService = new MemberLoginService();
		
		MemberLoginDTO loginMember = memberService.loginCheck(requestMember);
		
		System.out.println("loginMember : " + loginMember);
		
		if(loginMember != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			response.sendRedirect(request.getContextPath());
			
		} else {
			request.setAttribute("message", "로그인 실패!!");
			request.getRequestDispatcher("/WEB-INF/views/common/login/failed.jsp").forward(request, response);
		}
	}
	

}
