package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.admin.resume.service.JobFieldService;

@WebServlet("/jobfield/insert")
public class JobFieldInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "경로 지정해주기";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		int no = Integer.parseInt(request.getParameter("no"));
		String name = request.getParameter("name");
		
		JobFieldDTO requestJobField = new JobFieldDTO();
		requestJobField.setNo(no);
		requestJobField.setName(name);
		
		//requestJobField 확인
		System.out.println("jobFieldController requestJobField : " + requestJobField);
		
		int result = new JobFieldService().jobFieldInsert(requestJobField);
		
		//result값 확인
		System.out.println("jobFieldController result : " + result);
		
		String path = "경로 지정해주기";
		
		if(result > 0) {
			path = "성공 경로 지정해주기";
			request.setAttribute("성공코드", "jobFieldInsert");
		} else {
			path = "실패 경로 지정해주기";
			request.setAttribute("실패코드", "직무 분야 등록에 실패하셨습니다.");
		}
		
		request.getRequestDispatcher(path).forward(request, response);		
	}

}











