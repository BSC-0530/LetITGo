package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;
import com.itsme.letitgo.admin.resume.service.SelfIntroductionItemService;

@WebServlet("/selfintroductionitem/insert")
public class SelfIntroductionItemInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/admin/adminSelfIntroductionItemInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		String selfIntroItemName = request.getParameter("selfIntroItemName");
		
		SelfIntroductionItemDTO requestSelfIntroductionItem = new SelfIntroductionItemDTO();
		
		requestSelfIntroductionItem.setSelfIntroItemName(selfIntroItemName);
		
		int result = new SelfIntroductionItemService().selfIntroductionItemInsert(requestSelfIntroductionItem);
		
		System.out.println("selfIntroductionItem result : " + result);
		
		String path = "";
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "selfIntroductionItemInsert");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "자기소개서 항목 등록에 실패하셨습니다.");
		}
	
		response.sendRedirect("/let/selfintroductionitem/list");
		
	}

}













