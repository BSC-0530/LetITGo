package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.NoticeService;

@WebServlet("/admin/notice/manger/servlet")
public class adminNoticeMangerServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		NoticeService noticeService = new NoticeService();
		
		List<PersonalInfoPolicyDTO> notice = noticeService.NoticeAllSelected();
		
		for(PersonalInfoPolicyDTO ads :  notice) {
			System.out.println(ads);
		}
		
		
		String path = "";
		path = "/WEB-INF/views/admin/adminNoticepage.jsp";
		
		request.setAttribute("notice", notice);
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
