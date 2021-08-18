package com.itsme.letitgo.member.board.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.member.board.notice.model.dto.GuideLineDTO;
import com.itsme.letitgo.member.board.notice.model.service.GuideLineService;

@WebServlet("/guideline/detail")
public class GuideLineDetail extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postNo = Integer.parseInt(request.getParameter("postNo"));
		
		//확인
		System.out.println("request selectedDetailPostNo :  " + postNo);
		
		GuideLineDTO detail = new GuideLineService().selectDetail(postNo);
		
		//확인
		System.out.println("detail : " + detail);
		
		String path = "";
		
		if(detail != null) {
			path = "/WEB-INF/views/admin/GuideLineDetail.jsp";
			request.setAttribute("detailList", detail);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
