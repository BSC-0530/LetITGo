package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.CountReadingNumDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/simple/browse/select")
public class SimpleBrowseServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto1 = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto1.getMemNo();
			
		int onClickResumeNo = Integer.parseInt(request.getParameter("num"));
		
		System.out.println("@@@@@@@@@@@@" + onClickResumeNo);
		
		MainScoutListService browseInfoService = new MainScoutListService();
		
		Map<String, Object> browseInfo = browseInfoService.browseSelectInfo(onClickResumeNo);
		
		List<ResumeReadingHistoryDTO> kinds = browseInfoService.brosweHistoryKindsSelect(onClickResumeNo);
		
		
		System.out.println("kinds : " + kinds);
		
		ResumeReadingHistoryDTO dto = new ResumeReadingHistoryDTO();
		dto.setCoMemNo(memNo);
		dto.setResumeNo(onClickResumeNo);
		
		String path = "";
		if(kinds.size() == 0) {
			int kindsInsert = browseInfoService.readingKindsInsert(dto);
			
			request.setAttribute("path", browseInfo.get("path"));
			request.setAttribute("browseName", browseInfo.get("browseName"));
			request.setAttribute("jobName", browseInfo.get("jobName"));
			request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
			request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
			request.setAttribute("number", browseInfo.get("number"));
			
			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			
		}else {
			path="/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			request.setAttribute("path", browseInfo.get("path"));
			request.setAttribute("browseName", browseInfo.get("browseName"));
			request.setAttribute("jobName", browseInfo.get("jobName"));
			request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
			request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
			request.setAttribute("number", browseInfo.get("number"));
			
		}
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

}
