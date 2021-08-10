package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;

@WebServlet("/selfintroductionitem/insert")
public class SelfIntroductionItemInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "경로 지정해주기";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");

		int selfIntroItemNo = Integer.parseInt(request.getParameter("selfIntroItemNo"));
		String selfIntroItemName = request.getParameter("selfIntroItemName");
		
		SelfIntroductionItemDTO requestSelfIntroductionItemDTO = new selfIntroductionItemDTO();
		
		
	}

}













