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

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.service.ResumeService;

@WebServlet("/resume/insert")
public class ResumeInsertServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/views/resume/insertList.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
//		String resumeTitle = request.getParameter("resumeTitle");
//		String jobField = request.getParameter("jobField");
		String carComName = request.getParameter("carComName");
		String carDeptName = request.getParameter("carDeptName");
		String carJobName = request.getParameter("carJobName");
		String carWorkField = request.getParameter("carWorkField");
		String reqCarHireDate = request.getParameter("carHireDate");
		String reqCarEntDate = request.getParameter("carEntDate");
		String projectName = request.getParameter("projectName");
		String projectContent = request.getParameter("projectContent");
		String reqProjectStartDate = request.getParameter("projectStartDate");
		String reqProjectEndDate = request.getParameter("projectEndDate");
		

		java.sql.Date carHireDate = java.sql.Date.valueOf(reqCarHireDate);
		java.sql.Date carEntDate = java.sql.Date.valueOf(reqCarEntDate);
		java.sql.Date projectStartDate = java.sql.Date.valueOf(reqProjectStartDate);
		java.sql.Date projectEndDate = java.sql.Date.valueOf(reqProjectEndDate);
		
		
		System.out.println(carHireDate);
		System.out.println(carEntDate);
		CareerHistoryDTO car = new CareerHistoryDTO();
		
		car.setCarComName(carComName);
		car.setCarDeptName(carDeptName);
		car.setCarEntDate(carEntDate);
		car.setCarHireDate(carHireDate);
		car.setCarJobName(carJobName);
		car.setCarWorkField(carWorkField);
		car.setProjectContent(projectContent);
		car.setProjectEndDate(projectEndDate);
		car.setProjectStartDate(projectStartDate);
		car.setProjectName(projectName);
		
		int result = new ResumeService().insertResume(car);
		
		System.out.println(result);
		
		if(result > 0) {
			System.out.println("내가 이겼다");
			
		}
		
		
		
		
		
		
//		long longHireDate = utilCarHireDate.getTime();
//		java.sql.Date carHireDate = new Date(longHireDate);
		
		
//		System.out.println(carHireDate);
		System.out.println("11");
	}

}
