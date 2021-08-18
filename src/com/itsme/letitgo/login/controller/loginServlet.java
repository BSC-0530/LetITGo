package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.regist.model.service.CoMemberService;
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

		int appResult = memberService.selectAppHistory(loginMember.getMemNo());
		int rejectResult = memberService.selectRejectHistory(loginMember.getMemNo());
		int waitResult = memberService.selectWaitHistory(loginMember.getMemNo());
		
		
		StringBuilder redirectText = new StringBuilder();
		
		if((loginMember != null) && (loginMember.getMemKinds().equals("개인회원") && (loginMember.getMemEntYn().equals("N")))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/InMember';</script>");

		} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (appResult > 0) && (loginMember.getMemEntYn().equals("N"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/CoMember';</script>");
			
		} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (rejectResult > 0) && (loginMember.getMemEntYn().equals("N"))) {
			
			redirectText.append("<script>alert('회원가입승인이 거절되었습니다. 이메일을 확인해주세요.'); location.href='/let/loginPage';</script>");
			
		} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (waitResult > 0) && (loginMember.getMemEntYn().equals("N"))) {
			
			redirectText.append("<script>alert('회원가입승인 대기중입니다. 승인이 된 이후에 이용가능합니다.'); location.href='/let/loginPage';</script>");
			
		} else if((loginMember != null) && (loginMember.getMemKinds().equals("관리자"))) {
			
			HttpSession session = request.getSession();
			session.setAttribute("loginMember", loginMember);		
			redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/Admin';</script>");
						
		} else if(loginMember.getMemEntYn().equals("Y")){
			
			redirectText.append("<script>alert('탈퇴한 계정입니다.'); location.href='/let/loginPage';</script>");
			
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
