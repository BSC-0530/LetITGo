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

/* 로그인 */
@WebServlet("/login")
public class loginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");

		MemberLoginDTO requestMember = new MemberLoginDTO();
		requestMember.setMemId(memId);
		requestMember.setMemPwd(memPwd);

		MemberLoginService memberService = new MemberLoginService();

		/* 로그인된 정보와 DB와 확인하여 존재하면 정보를 가져오고 존재하지않으면 null */
		MemberLoginDTO loginMember = memberService.loginCheck(requestMember);

		StringBuilder redirectText = new StringBuilder();
		
		/* 아이디와 비밀번호가 존재하는 경우 */
		if(loginMember != null) {
			
			/* 기업회원의 경우 회원의 가입이 승인된 경우 */
			int appResult = memberService.selectAppHistory(loginMember.getMemNo());
			
			/* 기업회원의 경우 회원의 가입이 거절된 경우 */
			int rejectResult = memberService.selectRejectHistory(loginMember.getMemNo());
			
			/* 기업회원의 경우 회원의 가입이 대기인 경우 */
			int waitResult = memberService.selectWaitHistory(loginMember.getMemNo());

			/* 개인회원 로그인 */
			if((loginMember != null) && (loginMember.getMemKinds().equals("개인회원") && (loginMember.getMemEntYn().equals("N")))) {

				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);		
				redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/letitgo';</script>");

			/* 회원가입이 승인된 기업회원 로그인 */
			} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (appResult > 0) && (loginMember.getMemEntYn().equals("N"))) {

				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);		
				redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/letitgo';</script>");

			/* 회원가입이 거절된  기업회원 로그인 */
			} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (rejectResult > 0) && (loginMember.getMemEntYn().equals("N"))) {

				redirectText.append("<script>alert('회원가입승인이 거절되었습니다. 거절된 이유를 확인하고 싶으시다면 1:1 문의 또는 고객센터에 문의하시길 바랍니다.'); location.href='/let/loginPage';</script>");

			/* 회원가입이 대기상태인  기업회원  로그인 */	
			} else if((loginMember != null) && (loginMember.getMemKinds().equals("기업회원")) && (waitResult > 0) && (loginMember.getMemEntYn().equals("N"))) {

				redirectText.append("<script>alert('회원가입승인 대기중입니다. 승인이 된 이후에 이용가능합니다.'); location.href='/let/loginPage';</script>");

			/* 관리자 로그인 */
			} else if((loginMember != null) && (loginMember.getMemKinds().equals("관리자"))) {

				HttpSession session = request.getSession();
				session.setAttribute("loginMember", loginMember);		
				redirectText.append("<script>alert('로그인이 완료되었습니다.'); location.href='/let/mainPage/Admin';</script>");

			/* 탈퇴된 계정 로그인 */
			} else if(loginMember.getMemEntYn().equals("Y")){

				redirectText.append("<script>alert('탈퇴한 계정입니다.'); location.href='/let/loginPage';</script>");

			} 

		/* 아이디와 비밀번호가 일치자하지 않는 경우 */
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
