package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.service.SelectPersonalApplyService;

@WebServlet("/personal/apply/select")
public class SelectPersonalApplyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPersonalApplyService service = new SelectPersonalApplyService();
		
		List<SelectPersonalApplyDTO> PersonalApplyList = service.selectPersonalApply();
		
		for(SelectPersonalApplyDTO spad : PersonalApplyList) {
			System.out.println(spad);
		}

		String path = "/WEB-INF/views/member/personal/personalApply.jsp";	
		
		request.setAttribute("PersonalApplyList", PersonalApplyList);
		request.getRequestDispatcher(path).forward(request, response);

	}


}
