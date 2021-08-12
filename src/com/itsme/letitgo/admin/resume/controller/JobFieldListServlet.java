package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.admin.resume.service.JobFieldService;

@WebServlet("/jobfield/list")
public class JobFieldListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<JobFieldDTO> jobFieldList = new JobFieldService().selectAllJobFieldList();
		
		System.out.println(jobFieldList);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문 안의 주소값으로 가기
		
		if(jobFieldList != null) {
			path = "/WEB-INF/views/admin/adminJobField.jsp";
			request.setAttribute("jobFieldList", jobFieldList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}



}
