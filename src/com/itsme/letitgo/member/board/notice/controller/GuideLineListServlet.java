package com.itsme.letitgo.member.board.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.member.board.notice.model.dto.GuideLineDTO;
import com.itsme.letitgo.member.board.notice.model.service.GuideLineService;

@WebServlet("/guideline/list")
public class GuideLineListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<GuideLineDTO> guideLineList = new GuideLineService().selectAllGuideLineList();
		
		//확인
		System.out.println(guideLineList);
		
		String path = "";
		
		if(guideLineList != null) {
			path = "/WEB-INF/views/admin/GuideLineList.jsp";
			request.setAttribute("guideLineList", guideLineList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}











