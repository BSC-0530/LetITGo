package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;
import com.itsme.letitgo.admin.resume.service.SelfIntroductionItemService;

@WebServlet("/selfintroductionitem/list")
public class SelfIntroductionItemListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<SelfIntroductionItemDTO> selfIntroductionItemList = new SelfIntroductionItemService().selectAllSelfIntroductionItemList();
		
		System.out.println(selfIntroductionItemList);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문 안의 주소값으로 가기
		
		if(selfIntroductionItemList != null) {
			path = "/WEB-INF/views/admim/????????.jsp"; //주소값 아직 지정 안함
			request.setAttribute("selfIntroductionItemList", selfIntroductionItemList);
		} 
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}



}
