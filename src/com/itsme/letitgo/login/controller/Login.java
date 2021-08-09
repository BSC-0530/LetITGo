package com.itsme.letitgo.login.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.service.MemberService;

@WebServlet("/member/login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		
		//잘 나오는지 확인
		System.out.println("memId : " + memId);
		System.out.println("memPwd : " + memPwd);
		
		MemberDTO requestMember = new MemberDTO();
		requestMember.setId(memId);
		requestMember.setPwd(memPwd);
		
		MemberService memberService = new MemberService();
		
		MemberDTO loginMember = memberService.loginCheck(requestMember);
		System.out.println(loginMember);
		
		if(loginMember != null) {
			HttpSession session = request.getSession();
			session.setAttribute("logMember", loginMember);
			
			response.sendRedirect(request.getContextPath());
		} else {
			request.setAttribute("message", "로그인에 실패하셨습니다. 다시 한번 확인해 주시길 바랍니다.");
			request.getRequestDispatcher("????????").forward(request, response);
		}
		
		
	}

}












