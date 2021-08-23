package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.apply.model.service.PersonalApplyService;


@WebServlet("/recruit/cancelApply/update")
public class PersonalCancelApplyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		Map<String, Integer> applyMap = new HashMap<>();
		
		applyMap.put("jobPostNo", jobPostNo);
		applyMap.put("resumeNo", resumeNo);
		PersonalApplyService service = new PersonalApplyService();
		
		int result = service.personalCancelApply(applyMap);
		
		StringBuilder redirectText = new StringBuilder();

		if(result >= 2) {
			redirectText.append("<script>alert('공고 지원 취소이 정상적으로 처리되었습니다.'); location.href='/let/detail/jobPosting/select?jobPostNo=" + jobPostNo + "';</script>");
			
		
		} else {
			redirectText.append("<script>alert('공고 취소에 실패하였습니다.'); location.href='/let/detail/jobPosting/select?jobPostNo=" + jobPostNo + "';</script>");
		}
									
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
		
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
