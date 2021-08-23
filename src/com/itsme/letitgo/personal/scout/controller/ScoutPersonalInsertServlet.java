package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.scout.model.dto.MemNoAndResumeNoDTO;
import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/scout/personal/insert")
public class ScoutPersonalInsertServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		System.out.println("번호" + comDTO1.getMemNo());
		//로그인된 멤버 번호
		int memberNo = comDTO1.getMemNo();
		
		List<ResumeDTO> resumeList = new PersonalScoutService().selectResume(memberNo);
		
		System.out.println("con resumeList : " + resumeList);
		
		String path = "";
		
		if(resumeList != null) {
			path = "/WEB-INF/views/scout/scoutPersonalInsert.jsp";
			request.setAttribute("resumeList", resumeList);
		}
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		HttpSession session = request.getSession();
		
		MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		System.out.println("번호" + comDTO1.getMemNo());
		//로그인된 멤버 번호
		int memberNo = comDTO1.getMemNo();
		
		MemNoAndResumeNoDTO mr = new MemNoAndResumeNoDTO();
		
		mr.setMemNo(memberNo);
		mr.setResumeNo(resumeNo);
		
		System.out.println("con resumeNo : " + resumeNo);
		
		new PersonalScoutService().updateScoutStatus(mr);
		
		request.getRequestDispatcher("/WEB-INF/views/scout/scoutPersonalComplete.jsp").forward(request, response);
	}

}
