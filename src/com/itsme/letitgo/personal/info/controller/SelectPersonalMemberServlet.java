package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.info.model.dto.MemberDTO;
import com.itsme.letitgo.personal.info.model.service.PersonalMemberService;


@WebServlet("/personal/memberInfo/select")
public class SelectPersonalMemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MemberDTO memberInfo = new MemberDTO();
		
		PersonalMemberService memberService = new PersonalMemberService();
		
		memberInfo = memberService.selectMemberInfo();
		
		
		
		System.out.println(memberInfo);
		
		String path = "";
		
		if(memberInfo != null) {
			path = "/WEB-INF/views/member/personal/personalMyPage.jsp";
			request.setAttribute("memberInfo", memberInfo);
			
		} else {
			System.out.println("일시적 오류");
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
