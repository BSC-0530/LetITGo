package com.itsme.letitgo.personal.resume.controller;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.jdbc.SQL;

@WebServlet("/resume/insert")
public class ResumeInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/resume/insertList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String resumeTitle = request.getParameter("resumeTitle");
		String jobField = request.getParameter("jobField");
		String carComName = request.getParameter("carComName");
		String carDeptName = request.getParameter("carDeptName");
		String carJobName = request.getParameter("carJobName");
		String carWorkField = request.getParameter("carWorkField");
		String reqCarHireDate = request.getParameter("carHireDate");
		String reqCarEntDate = request.getParameter("carEntDate");
		
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		
		
		
//		long longHireDate = utilCarHireDate.getTime();
//		java.sql.Date carHireDate = new Date(longHireDate);
		
		
//		System.out.println(carHireDate);
		System.out.println("11");
	}

}
