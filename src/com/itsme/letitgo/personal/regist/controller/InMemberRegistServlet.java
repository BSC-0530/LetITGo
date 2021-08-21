package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;
import com.itsme.letitgo.personal.regist.model.service.MemberService;

/* home -> 로그인 -> 개인회원가입  */
@WebServlet("/member/individualRegist")
public class InMemberRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/common/register/InRegister.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String memberId = request.getParameter("memId");		
		String memberRawPwd= request.getParameter("memPwd");
		String memberPwd = new BCryptPasswordEncoder().encode(memberRawPwd);
		String memberEmail = request.getParameter("memEmail");
		String memberName = request.getParameter("memName");
		String memberPhone = request.getParameter("memPhone").replace("-", ""); 

		/* 입력받은 정보를 DTO에 담아서 전달 */
		InMemberDTO requestMember = new InMemberDTO();
		requestMember.setMemId(memberId);
		requestMember.setMemPwd(memberPwd);
		requestMember.setMemEmail(memberEmail);
		requestMember.setMemName(memberName);
		requestMember.setMemPhone(memberPhone);
		
		MemberService memberService = new MemberService();
		
		/* 개인회원가입 등록 */
		int result = memberService.registInMember(requestMember);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0) {
			redirectText.append("<script>alert('회원가입이 완료되었습니다.'); location.href='/let/loginPage';</script>");
		} else {
			redirectText.append("<script>alert('회원가입을 실패하였습니다.'); location.href='/let/loginPage';</script>");
		}
								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
