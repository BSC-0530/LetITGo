package com.itsme.letitgo.personal.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.scout.model.dto.PersonalBrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.service.PersonalScoutService;

@WebServlet("/scout/myPageList/servlet")
public class ScoutMyPageListServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
		List<ReadingResumeListOfPersonalDTO> readList = new PersonalScoutService().selectReadingResumeListOfPersonal();
		
		
		int simpleOpen = new PersonalScoutService().selectAllCountSimpeOpen(memNo);
		int deepOpen = new PersonalScoutService().selectAllCountDeepOpen(memNo);
		int scoutNum = new PersonalScoutService().selectAllScountNum(memNo);
		
		
		String path="";
		
		path="/WEB-INF/views/member/personal/SideScoutPage.jsp";
		
		
		
		request.setAttribute("simpleOpen", simpleOpen);
		request.setAttribute("deepOpen", deepOpen);
		request.setAttribute("scoutNum", scoutNum);
		request.setAttribute("readList", readList);
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
