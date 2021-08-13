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
		
//		Map<String, Object> browseInfo = browseInfoService. browseSelectInfo(onClickResumeNo);
		Map<String, Object> browseInfo = browseInfoService. browseSelectInfo(onClickResumeNo);
		
		
		
//		simpleInfo.put("browseName", browseName);
//		simpleInfo.put("jobName", jobName);
//		simpleInfo.put("browseSkills", browseSkills);
//		simpleInfo.put("browseCareer", browseCareer);
//		System.out.println(browseInfo.get("browseName"));
//		System.out.println(browseInfo.get("jobName"));
//		System.out.println(browseInfo.get("browseSkills"));
//		System.out.println("아이유왜안나오냐고 " + browseInfo.get("browseCareer"));
//		
		request.setAttribute("browseName", browseInfo.get("browseName"));
		request.setAttribute("jobName", browseInfo.get("jobName"));
		request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
		request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
		
		
		
		String path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
	}

}
