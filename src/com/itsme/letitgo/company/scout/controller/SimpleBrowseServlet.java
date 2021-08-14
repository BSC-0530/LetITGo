package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.CountReadingNumDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

@WebServlet("/simple/browse/select")
public class SimpleBrowseServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("ASD!@#!@#!@ : " + request.getParameter("num"));
		
		int onClickResumeNo = Integer.parseInt(request.getParameter("num"));
		
		MainScoutListService browseInfoService = new MainScoutListService();
		
		Map<String, Object> browseInfo = browseInfoService. browseSelectInfo(onClickResumeNo);
		
		ResumeReadingHistoryDTO  kinds = browseInfoService.brosweHistoryKindsSelect(onClickResumeNo);
		
		request.setAttribute("browseName", browseInfo.get("browseName"));
		request.setAttribute("jobName", browseInfo.get("jobName"));
		request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
		request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
		request.setAttribute("number", browseInfo.get("number"));
		
		
		String path = "";
		if(kinds == null) {
			int kindsInsert = browseInfoService.readingKindsInsert(onClickResumeNo);
			
			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			
		}else if(kinds.getResumeBrowseKinds().equals("얕은열람")) {
			int updateTime = browseInfoService.upDateTime(onClickResumeNo);
			
			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
		}else {
			int updateTime = browseInfoService.upDateTime(onClickResumeNo);
			path = "/WEB-INF/views/resume/resumeList.jsp";
			
		}
		
		request.setAttribute("getResumeNo", kinds.getResumeNo());
		
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
