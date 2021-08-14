package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;
import com.itsme.letitgo.personal.regist.model.service.MemberService;


@WebServlet("/UserRegisterCheckServlet")
public class MemberRegistServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		
		
		String memberId = request.getParameter("userId");		
		System.out.println(memberId);
		String memberPwd = request.getParameter("pw");
		System.out.println(memberPwd);
		String memberEmail = request.getParameter("email");
		System.out.println(memberEmail);
		String memberName = request.getParameter("name");
		System.out.println(memberName);
		String memberPhone = request.getParameter("phone");
		System.out.println(memberPhone);
//		String memberKinds = request.getParameter("kinds");
//		java.sql.Date enrollDate = java.sql.Date.valueOf(request.getParameter("enrollDate"));
//		int entYn = Integer.parseInt(request.getParameter("entYn"));
//		java.sql.Date entDate = java.sql.Date.valueOf(request.getParameter("entDate"));
		
		
				
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(memberId);
		memberDTO.setPwd(memberPwd);
		memberDTO.setEmail(memberEmail);
		memberDTO.setName(memberName);
		memberDTO.setPhone(memberPhone);
		memberDTO.setKinds("개인회원");
//		memberDTO.setEnrollDate(enrollDate);
//		memberDTO.setEntYn(entYn);
//		memberDTO.setEntDate(entDate);
		
		int result = new MemberService().registMember(memberDTO);
		
		
		
		if(result > 0) {
			
			request.setAttribute("successCode", "insertMember");
			response.sendRedirect("success.jsp");
			
		}else {
			
			request.setAttribute("message", "회원 가입 실패!");
			response.sendRedirect("failed.jsp");
		}
	}

}
