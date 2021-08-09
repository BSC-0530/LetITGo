package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.info.model.dto.MemberDTO;
import com.itsme.letitgo.personal.info.model.service.MemberService;


@WebServlet("/select/memberInfo")
public class selectMemberInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MemberDTO memberInfo = new MemberDTO();
		
		MemberService memberService = new MemberService();
		
		memberInfo = memberService.selectMemberInfo();
		
		
		System.out.println(memberInfo);
		
	}

}
