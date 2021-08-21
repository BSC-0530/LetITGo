package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

@WebServlet("/company/scout/wish/insert")
public class CompanyAddWishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		String inputPage = request.getParameter("inputPage");
		System.out.println(inputPage);
		
//		-------- 얕은열람용
		int onClickResumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		MainScoutListService browseInfoService = new MainScoutListService();
		Map<String, Object> browseInfo = browseInfoService.browseSelectInfo(onClickResumeNo);
		List<ResumeReadingHistoryDTO> kinds = browseInfoService.brosweHistoryKindsSelect(onClickResumeNo);
		
		
		System.out.println("kinds : " + kinds);
		
		request.setAttribute("browseName", browseInfo.get("browseName"));
		request.setAttribute("jobName", browseInfo.get("jobName"));
		request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
		request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
		request.setAttribute("number", browseInfo.get("number"));
		
//		-------- 깊은열람용
		int result = new MainScoutListService().insertWishList(resumeNo);
		Map<String, Object> detailResume = new MainScoutListService().selectDetailResume(resumeNo);
		System.out.println(detailResume);
		
		request.setAttribute("number", resumeNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		String path = "";
		if(result > 0 && inputPage.equals("simple")) {
			System.out.println("============== simple ============");
			path = "/WEB-INF/views/scout/scoutSimpleBrowse.jsp";
			request.setAttribute("browseName", browseInfo.get("browseName"));
			request.setAttribute("jobName", browseInfo.get("jobName"));
			request.setAttribute("browseSkills", browseInfo.get("browseSkills"));
			request.setAttribute("careeaNumber", browseInfo.get("careeaNumber"));
			request.setAttribute("number", browseInfo.get("number"));
			request.setCharacterEncoding("UTF-8");
			request.getRequestDispatcher(path).forward(request, response);
			
		} else if(result > 0 && inputPage.equals("detail") ) {
			path = "/WEB-INF/views/scout/scoutDetailResume.jsp";
			request.setAttribute("detailList", detailResume);
			request.setCharacterEncoding("UTF-8");
			request.getRequestDispatcher(path).forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
