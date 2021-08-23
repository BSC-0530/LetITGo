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
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;


@WebServlet("/Company/Scout/List/Select")
public class CompanyScoutListSelectServlet extends HttpServlet {
       
//@#$@#$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//마이페이지 스카우트 임@@@@@@@@@@@ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
		MainScoutListService mainScoutListService = new MainScoutListService();
		
		List<BrosweHistoryDTO> browselist = mainScoutListService.selectBrowseUsingHistroy(memNo);
		
		Map<String, Object> scoutList= mainScoutListService.selectAllScoutList();
		
		for(BrosweHistoryDTO BrowseUsingHistroy : browselist) {
			 
			System.out.println("@@@@@@@" + BrowseUsingHistroy);
			
		}
		
		
		int simpleOpen = mainScoutListService.selectAllCountSimpeOpen(memNo);
		int deepOpen = mainScoutListService.selectAllCountDeepOpen(memNo);
		int scoutNum = mainScoutListService.selectAllScountNum(memNo);
		
		System.out.println("깊은 열람 개수 " + deepOpen);
		
		
		String path = "/WEB-INF/views/member/company/scoutMyPage.jsp";
		
		request.setAttribute("scoutCareea", scoutList.get("scoutCareea"));
		request.setAttribute("browselist", browselist);
		request.setAttribute("deepCountNum", deepOpen);
		request.setAttribute("simpleCountNum", simpleOpen);
		request.setAttribute("scoutNum", scoutNum);
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
