package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;
import com.itsme.letitgo.personal.regist.model.service.MemberService;


@WebServlet("/member/individual/regist")
public class InMemberRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/common/register/InRegister.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");

		String memberId = request.getParameter("memId");		
		String memberPwd = request.getParameter("memPwd");
		String memberEmail = request.getParameter("memEmail");
		String memberName = request.getParameter("memName");
		String memberPhone = request.getParameter("memPhone"); 
		
		System.out.println("memberId : " + memberId);
		System.out.println("memberPwd : " + memberPwd);
		System.out.println("memberEmail : " + memberEmail);
		System.out.println("memberName : " + memberName);
		System.out.println("memberPhone : " + memberPhone);	
				
		InMemberDTO requestMember = new InMemberDTO();
		requestMember.setMemId(memberId);
		requestMember.setMemPwd(memberPwd);
		requestMember.setMemEmail(memberEmail);
		requestMember.setMemName(memberName);
		requestMember.setMemPhone(memberPhone);
		
		MemberService memberService = new MemberService();
		
		int result = memberService.registInMember(requestMember);
		System.out.println("result : " + result);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0) {
			redirectText.append("<script>alert('회원가입이 완료되었습니다.'); location.href='../../loginPage';</script>");
		} else {
			redirectText.append("<script>alert('회원가입을 실패하였습니다.'); location.href='../../loginPage';</script>");
		}
								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
