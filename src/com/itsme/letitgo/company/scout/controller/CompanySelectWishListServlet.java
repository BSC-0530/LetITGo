package com.itsme.letitgo.company.scout.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.scout.model.dto.CandidateRegisterSkillsDTO;
import com.itsme.letitgo.company.scout.model.dto.CandidateRegistrationDTO;
import com.itsme.letitgo.company.scout.model.service.MainScoutListService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/company/scout/wish/select")
public class CompanySelectWishListServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		
		HttpSession session = request.getSession();
        MemberLoginDTO dto1 = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto1.getMemNo();
		
        CandidateRegistrationDTO dto = new CandidateRegistrationDTO();
        dto.setCoMemNo(memNo);
        
		List<CandidateRegistrationDTO> wishInfoList = new MainScoutListService().selectWishInfoList(dto);
		System.out.println("@확인 : " + wishInfoList);
		List<CandidateRegisterSkillsDTO> wishSkillsList = new MainScoutListService().selectWishSkillsList(resumeNo);
		System.out.println("con info : " + wishInfoList);
		System.out.println("con skill : " + wishSkillsList);
		
		
		request.setAttribute("wishInfoList", wishInfoList);
		request.setAttribute("wishSkillsList", wishSkillsList);
		
		String path = "";
		if(wishInfoList != null && wishSkillsList != null) {
			path = "/WEB-INF/views/scout/scoutWishList.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
	}

}
