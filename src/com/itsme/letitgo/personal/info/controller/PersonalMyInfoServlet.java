package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;
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
		
		
        PersonalInfoService service = new PersonalInfoService();
        
        /* 프로필사진 링크 조회 */
		String titlePath = service.selectTitlePath(memNo);
		
		/* 이력서 열람 제한 기업 조회 */
		List<RestrictedCompanyDTO> restrictedCompany = service.selectRectrictedCompany(memNo);
		
		if(titlePath != null) {
			request.setAttribute("titlePath", titlePath);
		}
		if(restrictedCompany != null) {
			request.setAttribute("restrictedCompany", restrictedCompany);
		}
		
		String path = "";
		path = "/WEB-INF/views/member/personal/personalMyInfo.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
