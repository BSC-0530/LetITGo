package com.itsme.letitgo.member.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.member.board.notice.model.dto.GuideLineDTO;
import com.itsme.letitgo.member.board.notice.model.service.GuideLineService;

@WebServlet("/company/notice/list")
public class CompanyNoticeListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<GuideLineDTO> noticeList = new GuideLineService().selectNoticeList();
		
		//확인
		System.out.println(noticeList);
		
		String path = "";
		
		if(noticeList != null) {
			path = "/WEB-INF/views/member/company/companyNoticeMain.jsp";
			request.setAttribute("noticeList", noticeList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

}
