package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.PersonalBrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/scout/myPageList/servlet")
public class ScoutMyPageListServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<ReadingResumeListOfPersonalDTO> readList = new PersonalScoutService().selectReadingResumeListOfPersonal();
		
		
		
		
//		int simpleCount = mainScoutListService.selectSimpleCount();
		
		
		
		
		
		
		String path="";
		
		path="/WEB-INF/views/member/personal/SideScoutPage.jsp";
		
		
		
		request.setAttribute("readList", readList);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
