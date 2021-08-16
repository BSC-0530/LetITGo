package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.PersonalInfoPolicyService;

@WebServlet("/personalinfopolicy/list")
public class PersonalInfoPolicyListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<PersonalInfoPolicyDTO> personalInfoPolicyList = new PersonalInfoPolicyService().selectAllPersonalInfoPolicyList();
		
		System.out.println(personalInfoPolicyList);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문 안의 주소값으로 가기
		
		if(personalInfoPolicyList != null) {
			path = "/WEB-INF/views/admin/adminPolicyAndGuideLineList.jsp";
			request.setAttribute("personalInfoPolicyList", personalInfoPolicyList);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
}










