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
		
		String path = "/WEB-INF/views/admin/adminJobFieldInsertForm.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");

		/* int no = Integer.parseInt(request.getParameter("no")); */
		String name = request.getParameter("name");
		
		JobFieldDTO requestJobField = new JobFieldDTO();
		/* requestJobField.setNo(no); */
		requestJobField.setName(name);
		
		//requestJobField 확인
		System.out.println("jobFieldController requestJobField : " + requestJobField);
		
		int result = new JobFieldService().jobFieldInsert(requestJobField);
		
		//result값 확인
		System.out.println("jobFieldController result : " + result);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문을 돌려서 성공과 실패의 주소로 간다.
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp"; 
			request.setAttribute("successCode", "jobFieldInsert");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "직무 분야 등록에 실패하셨습니다.");
		}
		
		response.sendRedirect("/let/jobfield/list");
		/* request.getRequestDispatcher(path).forward(request, response); */	
		//아래 경로로 해봤을때 안넘어가고 404떴음 이따가 절대경로로 다시 해보기  -> ${}
		/*request.getRequestDispatcher("/WEB-INF/views/admin/jobfield/list").forward(request, response);*/		
	}

}











