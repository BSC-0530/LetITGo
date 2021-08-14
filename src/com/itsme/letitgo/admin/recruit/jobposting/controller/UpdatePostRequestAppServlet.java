package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostRequestAppService;


@WebServlet("/admin/post/app/update")
public class UpdatePostRequestAppServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		int jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));
		
		UpdatePostRequestAppService service = new UpdatePostRequestAppService();
		
		System.out.println("jobPostNo :	" + jobPostNo);
		System.out.println("jobPostReqNo :	" + jobPostReqNo);
		
		int result1 = service.updatePostRequestApp1(jobPostNo);
		int result2 = service.updatePostRequestApp2(jobPostReqNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		System.out.println(result1);
		System.out.println(result2);
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('채용공고등록을 승인하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고등록승인에 실패하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		}
		 
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}

	
}
