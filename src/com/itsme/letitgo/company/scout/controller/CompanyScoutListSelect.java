package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

/**
 * Servlet implementation class CompanyScoutListSelect
 */
@WebServlet("/Company/Scout/List/Select")
public class CompanyScoutListSelect extends HttpServlet {
       
//@#$@#$@@@@@@@@@@@@@@@@@@@@@@@@@@@@@//마이페이지 스카우트 임@@@@@@@@@@@ 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		MainScoutListService mainScoutListService = new MainScoutListService();
		
		List<BrosweHistoryDTO> paymentBrowseUsingHistroyList = MainScoutListService.selectBrowseUsingHistroy();
		
		for(BrosweHistoryDTO BrowseUsingHistroy : paymentBrowseUsingHistroyList) {
			
			System.out.println(BrowseUsingHistroy);
			
		}
		
		int simpleOpen = mainScoutListService.selectAllCountSimpeOpen();
		int deepOpen = mainScoutListService.selectAllCountDeepOpen();
		int scoutNum = mainScoutListService.selectAllScountNum();
		
		System.out.println("깊은 열람 개수 " + deepOpen);
		
		
		String path = "/WEB-INF/views/member/company/scoutMyPage.jsp";
		
		
		request.setAttribute("paymentBrowseUsingHistroyList", paymentBrowseUsingHistroyList);
		request.setAttribute("deepCountNum", deepOpen);
		request.setAttribute("simpleCountNum", simpleOpen);
		request.setAttribute("scoutNum", scoutNum);
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
