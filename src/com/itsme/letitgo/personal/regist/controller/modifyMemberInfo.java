package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;
import com.itsme.letitgo.personal.regist.model.service.MemberService;


@WebServlet("/member/modifyInfo")
public class modifyMemberInfo extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		MemberService memberService = new MemberService();
		InMemberDTO meberDTO = new InMemberDTO();		
		
		
		
		
		
	}

}
