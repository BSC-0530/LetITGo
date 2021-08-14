package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.service.SelectPersonalApplyService;

@WebServlet("/personal/apply/select")
public class SelectPersonalApplyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		SelectPersonalApplyService service = new SelectPersonalApplyService();
		
		List<SelectPersonalApplyDTO> PersonalApplyList = service.selectPersonalApply();
		List<SelectPersonlCompletedApplyDTO> PersonalApplyCompletedList = service.selectPersonalCompletedApply();
		List<SelectPersonlCanceledApplyDTO> PersonalApplyCanceledList = service.selectPersonalCanceledApply();
		
		for(SelectPersonalApplyDTO spad : PersonalApplyList) {
			System.out.println(spad);
		}
		
		for(SelectPersonlCompletedApplyDTO spad : PersonalApplyCompletedList) {
			System.out.println(spad);
		}
		
		for(SelectPersonlCanceledApplyDTO spad : PersonalApplyCanceledList) {
			System.out.println(spad);
		}

		String path = "/WEB-INF/views/member/personal/personalApply.jsp";	
		
		request.setAttribute("PersonalApplyList", PersonalApplyList);
		request.setAttribute("PersonalApplyCompletedList", PersonalApplyCompletedList);
		request.setAttribute("PersonalApplyCanceledList", PersonalApplyCanceledList);
		request.getRequestDispatcher(path).forward(request, response);

	}


}
