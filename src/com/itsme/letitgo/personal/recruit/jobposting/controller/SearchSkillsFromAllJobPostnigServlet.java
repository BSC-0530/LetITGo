package com.itsme.letitgo.personal.recruit.jobposting.controller;

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


@WebServlet("/searchSkills/select")
public class SearchSkillsFromAllJobPostnigServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String searchValue = request.getParameter("searchValue");
	    JSONArray arrayObj = new JSONArray();
	    JSONObject jsonObj = null;
	    
	   //////////// 임의의 데이터(db라 가정하자) ////////////  
	    ArrayList<String> dblist = new ArrayList<String>();
	    ArrayList<String> resultlist = new ArrayList<String>();
	    dblist.add("Afghanistan");
	    dblist.add("Albania");
	    dblist.add("Algeria");
	    dblist.add("American");
	    dblist.add("Samoa");
	    dblist.add("Andorra");
		
	   for(String str : dblist) {
	        if(str.toLowerCase().startsWith(searchValue)) {
	        	resultlist.add(str);
	        }
	    }
	   ///////////resultlist를 db에서 조회후 뽑아온 list라고 가정한다.///////////
		
	   //뽑은 후 json파싱
	    for(String str : resultlist) {
	       	jsonObj = new JSONObject();
	       	jsonObj.put("data", str);
	        arrayObj.add(jsonObj);
	    }
	    
		PrintWriter pw = response.getWriter();
		pw.print(arrayObj);
		pw.flush();
		pw.close();


		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
