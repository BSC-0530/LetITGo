package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.info.model.service.SelectBrowsingNumService;

@WebServlet("/personal/myPage/select")
public class SelectPersonalMemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		SelectBrowsingNumService service = new SelectBrowsingNumService();
						
		int shallowBrowsingNum = service.selectShallowBrowsingNum();
		int deepBrowsingNum = service.selectDeepBrowsingNum();
		int interviewProposalNum = service.selectInterviewProposalNum();
		int applicationCompletedNum = service.selectApplicationCompletedNum();
		int applicationCanceledNum = service.selectApplicationCanceledNum();
		int bookmarkNum = service.selectBookmarkNum();
		
		System.out.println("shallowBrowsingNum : " + shallowBrowsingNum );
		System.out.println("deepBrowsingNum : " + deepBrowsingNum );
		System.out.println("interviewProposalNum : " + interviewProposalNum );
		System.out.println("applicationCompletedNum : " + applicationCompletedNum );
		System.out.println("applicationCanceledNum : " + applicationCanceledNum );
		System.out.println("bookmarkNum : " + bookmarkNum );
		
		String path = "/WEB-INF/views/member/personal/personalMyPage.jsp";	
		
		request.setAttribute("shallowBrowsingNum", shallowBrowsingNum);
		request.setAttribute("deepBrowsingNum", deepBrowsingNum);
		request.setAttribute("interviewProposalNum", interviewProposalNum);
		request.setAttribute("applicationCompletedNum", applicationCompletedNum);
		request.setAttribute("applicationCanceledNum", applicationCanceledNum);
		request.setAttribute("bookmarkNum", bookmarkNum);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
