package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.CountReadingNumDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/simple/browse/select")
public class SimpleBrowseServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ASD!@#!@#!@ : " + request.getParameter("num"));
		
		int onClickResumeNo = Integer.parseInt(request.getParameter("num"));
		
		MainScoutListService browseInfoService = new MainScoutListService();
		
		Map<String, Object> browseInfo = browseInfoService. browseSelectInfo(onClickResumeNo);
		
//		int cnt = browseInfoService.readingCnt();
		
		
		
		request.setAttribute("browseName", browseInfo.get("browseName"));
		request.setAttribute("jobName", browseInfo.get("jobName"));
		request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
		request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
		request.setAttribute("number", browseInfo.get("number"));
		
		
		String path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}
