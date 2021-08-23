package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/personal/scout/response")
public class ScoutResponseInterviewServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String selectedYn = request.getParameter("selectedYN");
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		int coMemNo = Integer.parseInt(request.getParameter("coMemNo"));
		
		PersonalScoutService personalScoutService = new PersonalScoutService();
		ReadingResumeListOfPersonalDTO resumeAndCoMem = new ReadingResumeListOfPersonalDTO();
		
		resumeAndCoMem.setCoMemNo(coMemNo);
		resumeAndCoMem.setResumeNo(resumeNo);
		
		int result = 0;
		
		System.out.println(selectedYn);
		System.out.println(resumeNo);
		System.out.println(coMemNo);
		
//		StringBuilder 
		
		if(selectedYn.equals("Y")) {
			result = personalScoutService.updateAcceptScoutKinds(resumeAndCoMem);
		} else if(selectedYn.equals("N")) {
			result = personalScoutService.updateAcceptScoutKinds(resumeAndCoMem);
		}
		
		if(result > 0) {
			
			response.sendRedirect("/let/scout/myPageList/servlet");
		}
	}

}
