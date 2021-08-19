package com.itsme.letitgo.admin.info.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.dto.MemberWithdrawalDTO;
import com.itsme.letitgo.admin.info.model.service.MemberWithdrawalService;

@WebServlet("/member/withdrawal")
public class MemberWithdrawalServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<MemberWithdrawalDTO> memberWithdrawal = new MemberWithdrawalService().selectAllMemberWithdrawal();
		
		System.out.println(memberWithdrawal);
		
		String path = "";
		
		if(memberWithdrawal != null) {
			path = "/WEB-INF/views/admin/adminMemberWithdrawal.jsp";
			request.setAttribute("memberWithdrawal", memberWithdrawal);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}










