package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.resume.model.dto.SkillsAndCategoryDTO;

/**
 * Servlet implementation class MainScoutList
 */
@WebServlet("/main/Scout/List")
public class MainScoutListServlet extends HttpServlet {
	
	//상단바누르면 나오는 스카우트임
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		MainScoutListService mainScoutListService = new MainScoutListService();
		
			Map<String, Object> scoutList= mainScoutListService.selectAllScoutList();
		
		System.out.println("scoutListname : " + scoutList.get("scoutListName"));
		System.out.println("scoutListSkills : " + scoutList.get("scoutListSkills"));
		System.out.println("scoutCareea : " + scoutList.get("scoutCareea"));
		
		request.setAttribute("mainScoutList", scoutList.get("scoutListName"));
		request.setAttribute("scoutListSkills", scoutList.get("scoutListSkills"));
		request.setAttribute("scoutCareea", scoutList.get("scoutCareea"));
		
		
		
		String path="/WEB-INF/views/scout/scoutMainView.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//자동완성검색기능
		String value = request.getParameter("value");
		MainScoutListService mainScoutListService = new MainScoutListService();
		
//		List<SkillsAndCategoryDTO> skillsName = mainScoutListService.skillsSelect();
		
		
	    JSONArray list = new JSONArray();
	    
	    
	    JSONObject object = null;
	    


	
	
	super.doPost(request, response);
	
	}

}