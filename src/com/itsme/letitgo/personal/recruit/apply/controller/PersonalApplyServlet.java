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


@WebServlet("/recruit/apply/insert")
public class PersonalApplyServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 이력서 번호와 JOBPOST번호 받기 
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		
		Map<String, Integer> applyMap = new HashMap<>();
		
		applyMap.put("resumeNo", resumeNo);
		applyMap.put("jobPostNo", jobPostNo);
		
		PersonalApplyService service = new PersonalApplyService();
		
		int result = service.personalRecruitApply(applyMap);
			
		// insert성공
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result >= 2) {
			redirectText.append("<script>alert('공고 지원이 정상적으로 처리되었습니다.'); location.href='/let/detail/jobPosting/select?jobPostNo=" + jobPostNo + "';</script>");

		
		} else {
			redirectText.append("<script>alert('공고 지원에 실패하였습니다.'); location.href='/let/detail/jobPosting/select?jobPostNo=" + jobPostNo + "';</script>");
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
