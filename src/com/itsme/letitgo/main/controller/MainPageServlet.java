package com.itsme.letitgo.main.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.main.model.service.MainPageService;

@WebServlet("/mainPage/letitgo")
public class MainPageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		MainPageService service = new MainPageService();
		
		Map<String, Object> resultMap = service.selectPremiumRecruit();
		
		
		String path = "";
		
		
		System.out.println(resultMap);
		if(resultMap != null) {
			request.setAttribute("resultMap", resultMap);
			path = "/WEB-INF/views/main/main.jsp";			
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
