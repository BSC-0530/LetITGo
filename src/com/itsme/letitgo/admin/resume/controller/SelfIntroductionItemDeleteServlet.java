package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;
import com.itsme.letitgo.admin.resume.service.SelfIntroductionItemService;

@WebServlet("/selfintroductionitem/delete")
public class SelfIntroductionItemDeleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		int selfIntroItemNo = Integer.parseInt(request.getParameter("selfIntroItemNo"));
		
		SelfIntroductionItemDTO requestSelfIntroductionItem = new SelfIntroductionItemDTO();
		
		int result = new SelfIntroductionItemService().selfIntroductionItemDelete(selfIntroItemNo);
		
		String path = "";	
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "selfIntroductionItemDelete");
		} else {
			path= "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "자기소개서 항목 삭제에 실패하셨습니다.");
		}
		
		response.sendRedirect("/let/selfintroductionitem/list");
	}
}
