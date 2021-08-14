package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/detail/browse/select")
public class ScoutDetailResumeServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<ScoutDetailResumeDTO> detailResume = new PersonalScoutService().selectDetailResume();
		
		String path = "";
		
		if(detailResume != null) {
			path = "/WEB-INF/views/scout/scoutDetailResume.jsp";
			request.setAttribute("detailList", detailResume);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
