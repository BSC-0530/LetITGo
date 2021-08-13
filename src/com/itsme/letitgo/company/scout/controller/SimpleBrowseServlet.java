package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;

@WebServlet("/simple/browse/select")
public class SimpleBrowseServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ASD!@#!@#!@ : " + request.getParameter("num"));
		
		int onClickResumeNo = Integer.parseInt(request.getParameter("num"));
		
		MainScoutListService browseInfoService = new MainScoutListService();
		
		List<BrosweSimplelDTO> browseInfo = browseInfoService. browseSelectInfo(onClickResumeNo);
		
		browseInfo.get(0).getMemDTO().get(0).getMemName();
		
		
		String path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}
