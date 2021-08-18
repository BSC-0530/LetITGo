package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.itsme.letitgo.company.recruit.applicant.model.dto.SkillsDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;

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

//		---------- 검색 자동완성 
		String term = request.getParameter("term");
		System.out.println("input term : " + term);
		List<SkillsDTO> skillsList = new ArrayList<>();
		
		if(term != null) {
			skillsList = new MainScoutListService().selectSkillsName(term);
			
		}
   
		Gson gson = new GsonBuilder().create();
		
		String jsonList = gson.toJson(skillsList);
		
		response.setContentType("application/json; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		out.print(jsonList);
		out.flush();
		out.close();
		
//		------------ 정렬조회
		
		String inputSkill = request.getParameter("inputSkill");
		System.out.println(inputSkill);
		
		MainScoutListService mainScoutListService = new MainScoutListService();
		
		Map<String, Object> selectedScoutList= mainScoutListService.selectBySkillScoutList(inputSkill);
		
		System.out.println("scoutListname : " + selectedScoutList.get("scoutListName"));
		System.out.println("scoutListSkills : " + selectedScoutList.get("scoutListSkills"));
		System.out.println("scoutCareea : " + selectedScoutList.get("scoutCareea"));
		
	}

}
