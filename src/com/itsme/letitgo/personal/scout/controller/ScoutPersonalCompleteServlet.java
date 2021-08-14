package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/scout/personal/complete")
public class ScoutPersonalCompleteServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/WEB-INF/views/scout/scoutPersonalComplete.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

}
