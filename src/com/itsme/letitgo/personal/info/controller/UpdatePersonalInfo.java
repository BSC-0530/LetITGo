package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;
import com.itsme.letitgo.personal.info.model.service.PersonalInfoService;


@WebServlet("/personalMyInfo/update")
public class UpdatePersonalInfo extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = 2;
		
		// 마이페이지 회원정보 확인 페이지로 이동
		PersonalInfoService service = new PersonalInfoService();
		
		List<RestrictedCompanyDTO> restrictedCompanyList = new ArrayList<>();
		restrictedCompanyList = service.selectRectrictedCompany(memNo);
		
		String path = "";
		if(restrictedCompanyList != null) {
			path = "/WEB-INF/views/member/personal/personalChangeInfo.jsp";
			request.setAttribute("restrictedComapny", restrictedCompanyList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
