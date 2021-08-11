package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.scout.model.dto.MainScoutListingDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

/**
 * Servlet implementation class MainScoutList
 */
@WebServlet("/main/Scout/List")
public class MainScoutList extends HttpServlet {
	
	//상단바누르면 나오는 스카우트임
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<MainScoutListingDTO> mainScoutList = new MainScoutListService().selectAllScoutList();
		
//		System.out.println(mainScoutList);
		
		for(MainScoutListingDTO list : mainScoutList) {
			System.out.println(list);
		}
		
		String path="/WEB-INF/views/scout/scoutMainView.jsp";
		request.setAttribute("mainScoutList", mainScoutList );
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}


}
