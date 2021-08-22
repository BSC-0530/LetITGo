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
import com.itsme.letitgo.login.model.service.MemberWithdrawalYnService;

@WebServlet("/login/member/withdrawal/yn")
public class MemberWithdrawalYnServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String path = "/WEB-INF/views/common/login/memberWithdrawalYn.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		
		MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
		
		int memNo = dto.getMemNo();
		
		MemberLoginDTO requestMemberLogin = new MemberLoginDTO();
		requestMemberLogin.setMemNo(memNo);
		
		int result = new MemberWithdrawalYnService().memberWithdrawalYn(memNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0) {
			redirectText.append("<script>alert('탈퇴가 정상적으로 되었습니다.'); location.href='/let/loginPage';</script>");
			request.getSession().invalidate();	
			response.sendRedirect(request.getContextPath());
		}  else {
			redirectText.append("<script>alert('탈퇴요청에 실패하였습니다.'); location.href='../../main/InMemberPage';</script>");
		}
		
		String path = "";
		
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}


}

















