package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.PersonalInfoPolicyService;

@WebServlet("/personalinfopolicy/insert")
public class PersonalInfoPolicyInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/WEB-INF/views/admin/adminPolicyAndGuideLineInsert.jsp"; // -> 경로지정해주기(아마도 adminPolicyAndGuideLineInsertForm.jsp로 만들듯)
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String postTitle = request.getParameter("postTitle");
		String postContent = request.getParameter("postContent");
		java.sql.Date postRegistrationDate = java.sql.Date.valueOf(request.getParameter("postRegistrationDate"));
		String postKinds = request.getParameter("postKinds");
		java.sql.Date postModifiedDate = java.sql.Date.valueOf(request.getParameter("postModifiedDate"));
		String postExposureStatus = request.getParameter("postExposureStatus");
		int managerMemberNo = Integer.parseInt(request.getParameter("managerMemberNo"));
		
		PersonalInfoPolicyDTO requestPersonalInfoPolicy = new PersonalInfoPolicyDTO();
		requestPersonalInfoPolicy.setPostTitle(postTitle);
		requestPersonalInfoPolicy.setPostContent(postContent);
		requestPersonalInfoPolicy.setPostRegistrationDate(postRegistrationDate);
		requestPersonalInfoPolicy.setPostKinds(postKinds);
		requestPersonalInfoPolicy.setPostModifiedDate(postModifiedDate);
		requestPersonalInfoPolicy.setPostExposureStatus(postExposureStatus);
		requestPersonalInfoPolicy.setManagerMemberNo(managerMemberNo);
		
		//requestPersonalInfoPolicy 확인
		System.out.println("personalInfoPolicyController requestPersonalInfoPolicy : " + requestPersonalInfoPolicy);
		
		int result = new PersonalInfoPolicyService().personalInfoPolicyInsert(requestPersonalInfoPolicy);
		
		//result값 확인
		System.out.println("personalInfoPolicyController result : " + result);
		
		String path = ""; //빈 문자열을 선언 후, 밑의 if문을 돌려서 성공과 실패의 주소로 간다.
		
		if(result > 0) {
			path = "/WEB-INF/views/admin/adminSuccess.jsp";
			request.setAttribute("successCode", "personalInfoPolicyInsert");
		} else {
			path = "/WEB-INF/views/admin/adminFailed.jsp";
			request.setAttribute("message", "개인정보처리방침 등록에 실패하셨습니다.");
		}
		
		response.sendRedirect(""); // -> 이건 조회 화면으로 돌아가야함 : /let/personalInfoPolicy/list 만들어서 넘겨줄거임
		
	}

}










