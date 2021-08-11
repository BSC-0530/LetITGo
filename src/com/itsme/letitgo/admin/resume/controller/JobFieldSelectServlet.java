package com.itsme.letitgo.admin.resume.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.resume.model.dto.JobFieldDTO;

@WebServlet("/jobfield/select")
public class JobFieldSelectServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//전달된 파라미터 꺼내기 
		int no = Integer.parseInt(request.getParameter("no"));
		
		//전달된 값 확인
		System.out.println("int no: " + no);
		
		//직무번호를 이용해 직무 이름을 조회하는 비즈니스 로직 호출
//		List<JobFieldDTO> jobFieldSelect = jobFieldService.
		
	}


}


