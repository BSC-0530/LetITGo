package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.MemberLoginService;

@WebServlet("/login")
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
		
		StringBuilder redirectText = new StringBuilder();
		
		if((loginMember != null) && (loginMember.getMemKinds().equals("개인회원"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/InMember';</script>");

		} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/CoMember';</script>");
			
		} else if((loginMember != null) && (loginMember.getMemKinds().equals("관리자"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/Admin';</script>");
						
		} else {
			
			redirectText.append("<script>alert('아이디와 비밀번호를 다시 확인해주세요.'); location.href='/let/loginPage';</script>");
			
		}
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}


}
