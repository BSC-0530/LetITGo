package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

@WebServlet("/detail/browse/complete")
public class CompleteInterviewServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		StringBuilder redirectText = new StringBuilder();
		
		redirectText.append("<script>alert('면접 제안을 완료했습니다.');</script>");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		
		
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		System.out.println("comp resumeNo : " + resumeNo);
		Map<String, Object> detailResume = new MainScoutListService().selectDetailResume(resumeNo);
		
		Map<String, Object> detailMap = new MainScoutListService().selectDetailResume(resumeNo);
		request.setAttribute("detailResume", detailMap.get("detailResume"));
		request.setAttribute("detailCareer", detailMap.get("detailCareer"));
		request.setAttribute("detailSkills", detailMap.get("detailSkills"));
		request.setAttribute("detailIntroContent", detailMap.get("detailIntroContent"));
		request.setAttribute("detailAward", detailMap.get("detailAward"));
		request.setAttribute("detailEdu", detailMap.get("detailEdu"));
		request.setAttribute("detailLicense", detailMap.get("detailLicense"));
		request.setAttribute("detailJobField", detailMap.get("detailJobField"));
		request.setAttribute("detailPot", detailMap.get("detailPot"));
		request.setCharacterEncoding("UTF-8");
		
		request.getRequestDispatcher("/WEB-INF/views/scout/scoutDetailResume.jsp").include(request, response);
	}

}
