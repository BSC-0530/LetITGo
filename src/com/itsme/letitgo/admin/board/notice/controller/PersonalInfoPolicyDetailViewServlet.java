

package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.service.PersonalInfoPolicyService;

@WebServlet("/personalinfo/policy/detailview")
public class PersonalInfoPolicyDetailViewServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int postNo = Integer.parseInt(request.getParameter("postNo")); //selectedDetailPostNo : 뷰 페이지에 있는 변수명
		System.out.println("request selectedDetailPostNo : " + postNo);
	
		PersonalInfoPolicyDTO detailView = new PersonalInfoPolicyService().selectDetailList(postNo);
		
		// 값확인
		System.out.println("서블렛 : " + detailView);
		
		String path = "";
		
		if(detailView != null) {
			path = "/WEB-INF/views/admin/adminPolicyAndGuideLineDetailView.jsp";
			request.setAttribute("detailList", detailView);	//detailList 어디서 받아오는지
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		PersonalInfoPolicyDTO policyModifyInsert = new PersonalInfoPolicyDTO();
		PersonalInfoPolicyService PersonalInfoPolicyService = new PersonalInfoPolicyService();
		
		int managerMemberNo = Integer.parseInt(request.getParameter("managerMemberNo"));
//		
//		// 확인
//		System.out.println("관리자 번호 : " + request.getParameter("managerMemberNo"));
		
		String postTitle = request.getParameter("postTitle");
		
		String postKinds = request.getParameter("postKinds");
		//확인
		System.out.println("확인 : " + postKinds);
		
		java.sql.Date postRegistDate = java.sql.Date.valueOf(request.getParameter("postRegistrationDate"));
		
		String upper = request.getParameter("postExposureStatus");
		String postContent = request.getParameter("postContent");
		
		//확인
//		System.out.println("노출여부 : " + upper);
		
		String postExposureStatus = upper.trim();
		//노출여부 나옴?
//		System.out.println(postExposureStatus);
		
		policyModifyInsert.setManagerMemberNo(managerMemberNo);
		policyModifyInsert.setPostTitle(postTitle);
		policyModifyInsert.setPostRegistrationDate(postRegistDate);
		policyModifyInsert.setPostExposureStatus(postExposureStatus);
		policyModifyInsert.setPostContent(postContent);
		policyModifyInsert.setPostKinds(postKinds);
		
		String path = "";
		
		int result = PersonalInfoPolicyService.policyModifyInsert(policyModifyInsert);
		
		response.setCharacterEncoding("UTF-8");
		
		if(result > 0) {
			response.sendRedirect("/let/personalinfopolicy/list");
		}
		
	}

}







