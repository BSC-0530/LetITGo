package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.resume.model.dto.SkillsDTO;

@WebServlet("/search/auto/skills")
public class AutoSearchForSkillsServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 검색 자동완성
		String term = request.getParameter("term");
		
		System.out.println("input term : " + term);
		
		List<SkillsDTO> skillsList = new ArrayList<>();
		
		if(term != null) {
			
			skillsList = new MainScoutListService().selectSkillsName(term);
			
			Gson gson = new GsonBuilder().create();
			
			String jsonList = gson.toJson(skillsList);
			
			response.setContentType("application/json; charset=UTF-8");
			
			PrintWriter out = response.getWriter();
			
			out.print(jsonList);
			out.flush();
			
		}
	}

}
