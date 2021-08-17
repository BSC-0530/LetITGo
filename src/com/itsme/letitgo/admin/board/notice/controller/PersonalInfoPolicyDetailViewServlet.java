//package com.itsme.letitgo.admin.board.notice.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
//import com.itsme.letitgo.admin.board.notice.model.service.PersonalInfoPolicyService;
//
//@WebServlet("/personalinfo/policy/detailview")
//public class PersonalInfoPolicyDetailViewServlet extends HttpServlet {
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//
////      본근님꺼
//		PersonalInfoPolicyService personalInfoPolicyService = new PersonalInfoPolicyService();
//		
//		int postNo = Integer.parseInt(request.getParameter("postNo"));
//		
//		PersonalInfoPolicyDTO detailView = personalInfoPolicyService.selectDetailList(postNo);
//		
//		System.out.println(detailView);
//		
//		request.setAttribute("detailView", detailView);
//		
//		String path="";
//		
//		path = "/WEB-INF/views/admin/adminPolicyAndGuideLineDetailView.jsp";
//		request.getRequestDispatcher(path).forward(request, response);
//		
////		< 내가 만든거 안넘어가가가가가가가가가 >
////		int postNo = Integer.parseInt(request.getParameter("postNo")); //selectedDetailPostNo : 뷰 페이지에 있는 변수명
////		System.out.println("request selectedDetailPostNo : " + postNo);
////		
////		List<PersonalInfoPolicyDTO> detailView = new PersonalInfoPolicyService().selectDetailList(postNo);
////		
////		System.out.println("서블렛 : " + detailView);
////		
////		String path = "";
////		
////		if(detailView != null) {
////			path = "/WEB-INF/views/admin/adminPolicyAndGuideLineDetailView.jsp";
////			request.setAttribute("detailList", detailView);	//detailList 어디서 받아오는지
////		}
////		
////		request.getRequestDispatcher(path).forward(request, response);
//		
//		
//	}
//
//}

package com.itsme.letitgo.admin.board.notice.controller;

import java.io.IOException;
import java.util.List;

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
		
//		List<PersonalInfoPolicyDTO> detailView = new PersonalInfoPolicyService().selectDetailList(postNo);
		PersonalInfoPolicyDTO detailView = new PersonalInfoPolicyService().selectDetailList(postNo);
		
		System.out.println("서블렛 : " + detailView);
		
		String path = "";
		
		if(detailView != null) {
			path = "/WEB-INF/views/admin/adminPolicyAndGuideLineDetailView.jsp";
			request.setAttribute("detailList", detailView);	//detailList 어디서 받아오는지
		}
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
		
	}

}


