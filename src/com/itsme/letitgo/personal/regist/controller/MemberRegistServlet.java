package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.mapper.MemberMapper;
import com.itsme.letitgo.personal.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;
import com.itsme.letitgo.personal.regist.model.mapper.RegistMemberMapper;
import com.itsme.letitgo.personal.regist.model.service.MemberService;


@WebServlet("/UserRegisterCheckServlet")
public class MemberRegistServlet extends HttpServlet {

	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		
		
		String memberId = request.getParameter("userID");
		String memberPwd = request.getParameter("memberPwd");
		String email = request.getParameter("email");
		String name = request.getParameter("memberName");
		String kinds = request.getParameter("kinds");
		String phone = request.getParameter("phone");
		java.sql.Date enrollDate = java.sql.Date.valueOf(request.getParameter("enrollDate"));
		int entYn = Integer.parseInt(request.getParameter("entYn"));
		java.sql.Date entDate = java.sql.Date.valueOf(request.getParameter("entDate"));
		
		MemberDTO memberDTO = new MemberDTO();
		memberDTO.setId(memberId);
		memberDTO.setPwd(memberPwd);
		memberDTO.setEmail(email);
		memberDTO.setName(name);
		memberDTO.setKinds(kinds);
		memberDTO.setPhone(phone);
		memberDTO.setEnrollDate(enrollDate);
		memberDTO.setEntYn(entYn);
		memberDTO.setEntDate(entDate);
		
		int result = new MemberService().registMember(memberDTO);
		
		
		
		if(result > 0) {
			
			request.setAttribute("successCode", "insertMember");
			response.sendRedirect("regist.jsp");
			return;
			
		}else {
			
			request.setAttribute("message", "회원 가입 실패!");
			response.sendRedirect("regist.jsp");
			return;
		}
	}

}
