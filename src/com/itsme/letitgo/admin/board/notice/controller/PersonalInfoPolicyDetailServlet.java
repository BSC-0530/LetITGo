package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.PersonalInfoPolicyService;

@WebServlet("/personalinfopolicy/detail")
public class PersonalInfoPolicyDetailServlet extends HttpServlet {

//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		PersonalInfoPolicyService personalInfoPolicyService = new PersonalInfoPolicyService();
//		
//		int postNo = Integer.parseInt(request.getParameter("postNo"));
//		
//		PersonalInfoPolicyDTO personalInfoPolicyDatail = personalInfoPolicyService.selectAllPersonalInfoPolicyDetail(postNo);		
//		
//		System.out.println(personalInfoPolicyDatail);
//		
//		request.setAttribute("personalInfoPolicyDatail", personalInfoPolicyDatail);
//		
//		String path = "";
//		
//		path = "/WEB-INF/views/admin/adminPolicyAndGuideLineDetail.jsp"; //jsp경로 지정해주기 아마도 adminPersonalInfoPolicyDetail.jsp로 만들듯
//		request.getRequestDispatcher(path).forward(request, response);
//		
//	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		PersonalInfoPolicyDTO personalInfoPolicyModifyInsert = new PersonalInfoPolicyDTO();
		PersonalInfoPolicyService personalInfoPolicyService = new PersonalInfoPolicyService();
		
		int postNo = Integer.parseInt(request.getParameter("postNo"));
		System.out.println("postNo : " + postNo);
		
//		String postTitle = request.getParameter("postTitle");
//		
//		java.sql.Date postRegistrationDate = java.sql.Date.valueOf(request.getParameter("postRegistrationDate"));
//		
//		String upper = request.getParameter("postExposureStatus");
//		String postContent = request.getParameter("postContent");
//		
//		System.out.println("postExposureStatus : " + upper);
		
//		String postExposureStatus = upper.trim();
//		System.out.println(postExposureStatus);
//		
//		personalInfoPolicyModifyInsert.setManagerMemberNo(managerMemberNo);
//		personalInfoPolicyModifyInsert.setPostTitle(postTitle);
//		personalInfoPolicyModifyInsert.setPostRegistrationDate(postRegistrationDate);
//		personalInfoPolicyModifyInsert.setPostExposureStatus(postExposureStatus);
//		personalInfoPolicyModifyInsert.setPostContent(postContent);
//		
//		String path = "";
//		
//		int result = personalInfoPolicyService.personalInfoPolicyModifyInsert(personalInfoPolicyModifyInsert);
//		
//		response.setCharacterEncoding("UTF-8");
//		
//		if(result > 0) {
//			response.sendRedirect("/let/personalinfopolicy/list");   // 관리하는 경로 지정해주기 
		}
		
	}


