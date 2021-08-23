package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;
import com.itsme.letitgo.personal.info.model.service.PersonalInfoService;


@WebServlet("/personalMyInfo")
public class PersonalMyInfoServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

        int memNo = dto.getMemNo();
		
//		// 마이페이지 회원정보 확인 페이지로 이동
		PersonalInfoService service = new PersonalInfoService();
		
		String titlePath = service.selectTitlePath(memNo);

		request.setAttribute("titlePath", titlePath);
		
		String path = "";
		path = "/WEB-INF/views/member/personal/personalMyInfo.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
