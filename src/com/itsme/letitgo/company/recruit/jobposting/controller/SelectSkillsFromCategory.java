package com.itsme.letitgo.company.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.google.gson.JsonObject;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.JpSkillsDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.service.SelectCoMyJobPostingService;



@WebServlet("/fromCategory/getSkills/select")
public class SelectSkillsFromCategory extends HttpServlet {
	
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int categoryNo = Integer.parseInt(request.getParameter("categoryNo"));
		System.out.println(categoryNo);
		
		SelectCoMyJobPostingService service = new SelectCoMyJobPostingService();
		
		ArrayList<JpSkillsDTO> skills = new ArrayList<>();
		
		skills = service.selectSkillsFromCategory(categoryNo);
		
		System.out.println(skills);
		
		JSONArray jsonArray = new JSONArray();
		
		
		for(JpSkillsDTO dto : skills) {
			
			JSONObject json = new JSONObject();
			json.put("skillsNo", dto.getSkillsNo());
			json.put("skillsName", dto.getSkillsName());
			
			jsonArray.add(json);
		}
		System.out.println(jsonArray);

		response.setContentType("application/json; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(jsonArray.toJSONString());
		out.flush();
		out.close();
		
		
		
	}

}
