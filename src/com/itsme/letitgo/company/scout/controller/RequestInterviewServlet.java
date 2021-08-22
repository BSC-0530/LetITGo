package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.scout.model.dto.InterviewProposalDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/company/scout/interview")
public class RequestInterviewServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int inMemNo = Integer.parseInt(request.getParameter("memNo"));
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

        int coMemNo = dto.getMemNo();

		InterviewProposalDTO memNos = new InterviewProposalDTO();
		memNos.setInMemNo(inMemNo);
		memNos.setResumeNo(resumeNo);
		memNos.setCoMemNo(coMemNo);
		
		int resultInterview = new MainScoutListService().insertInterview(memNos);
		System.out.println(resultInterview);
		System.out.println(request);
		
		if(resultInterview > 0) {
			System.out.println("if문 들어옴");
			request.getRequestDispatcher("/detail/browse/complete").forward(request, response);
		}
		
	}

}
