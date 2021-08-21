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
import com.itsme.letitgo.company.scout.model.dto.DeliverCareerAndSkillDTO;
import com.itsme.letitgo.company.scout.model.dto.DeliverResumeNoAndSelectedSkillDTO;
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
		
		request.setAttribute("mainScoutList", scoutList.get("scoutListName"));
		request.setAttribute("scoutListSkills", scoutList.get("scoutListSkills"));
		request.setAttribute("scoutCareea", scoutList.get("scoutCareea"));
		
		String path="/WEB-INF/views/scout/scoutMainView.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String inputSkill = request.getParameter("inputSkill");
		int inputCareer = Integer.parseInt(request.getParameter("experience"));
		
		System.out.println("inputSkill : " + inputSkill);
		System.out.println("inputCareer : " + inputCareer);

			if(inputSkill != null && inputCareer > 0) {
				
				DeliverCareerAndSkillDTO selectedCareerAndSkill = new DeliverCareerAndSkillDTO();
				selectedCareerAndSkill.setCareerValue(inputCareer);
				selectedCareerAndSkill.setSkill(inputSkill);
				
				// 정렬조회(스킬&경력)
				MainScoutListService mainScoutListService = new MainScoutListService();
				
				Map<String, Object> selectedTwoScoutList = mainScoutListService.selectedByTwoScoutList(selectedCareerAndSkill);
				
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				
				request.setAttribute("mainScoutList", selectedTwoScoutList.get("selectedByTwoScoutListInName"));
				request.setAttribute("scoutListSkills", selectedTwoScoutList.get("selectedByTwoScoutListInSkills"));
				request.setAttribute("scoutCareea", selectedTwoScoutList.get("selectedByTwoScoutListInCareer"));
				
				String path="/WEB-INF/views/scout/scoutMainView.jsp";
				request.getRequestDispatcher(path).include(request, response);
				
			} 
			
			if(inputSkill != null && inputCareer == 0) {
				
				// 정렬조회(스킬만)
				MainScoutListService mainScoutListService = new MainScoutListService();
				
				Map<String, Object> selectedScoutList= mainScoutListService.selectBySkillScoutList(inputSkill);
				
				System.out.println("selectedScoutListInName : " + selectedScoutList.get("selectedScoutListInName"));
				System.out.println("selectedScoutListInSkills : " + selectedScoutList.get("selectedScoutListInSkills"));
				System.out.println("selectedScoutListInCareer : " + selectedScoutList.get("selectedScoutListInCareer"));
				
				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				
				request.setAttribute("mainScoutList", selectedScoutList.get("selectedScoutListInName"));
				request.setAttribute("scoutListSkills", selectedScoutList.get("selectedScoutListInSkills"));
				request.setAttribute("scoutCareea", selectedScoutList.get("selectedScoutListInCareer"));
				
				String path="/WEB-INF/views/scout/scoutMainView.jsp";
				request.getRequestDispatcher(path).include(request, response);
				
			} 
			
			if(inputCareer > 0 && inputSkill == null) {
				
				// 정렬조회(경력만)
				MainScoutListService mainScoutListService = new MainScoutListService();
				
				Map<String, Object> selectedCareerList = mainScoutListService.selectedByCareerScoutList(inputCareer);

				request.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				
				request.setAttribute("mainScoutList", selectedCareerList.get("selectedByCarScoutListInName"));
				request.setAttribute("scoutListSkills", selectedCareerList.get("selectedByCarScoutListInSkills"));
				request.setAttribute("scoutCareea", selectedCareerList.get("selectedByCarScoutListInCareer"));
				
				String path = "/WEB-INF/views/scout/scoutMainView.jsp";
				request.getRequestDispatcher(path).include(request, response);
				
			}

		}

	}


