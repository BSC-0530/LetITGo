package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.apply.model.service.PersonalApplyService;


@WebServlet("/recruit/cancelApply/update")
public class PersonalCancelApplyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		int inMemNo = 3;
		
		Map<String, Integer> applyMap = new HashMap<>();
		
		applyMap.put("jobPostNo", jobPostNo);
		applyMap.put("inMemNo", inMemNo);
		PersonalApplyService service = new PersonalApplyService();
		
		int result = service.personalCancelApply(applyMap);
		
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
