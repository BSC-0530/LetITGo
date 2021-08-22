package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
import com.itsme.letitgo.personal.info.model.service.PersonalInfoService;


@WebServlet("/member/personal/modifyinfo")
public class ModifyPersonalInfoServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		
		request.setAttribute("memNo",memNo);
		
		String path = "/WEB-INF/views/member/personal/modifypersoanlmain.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8"); //UTF-8(한글) 로 변환
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		String personalId = request.getParameter("personalId");				//viewpage에서 넘긴 값을 getparameter로 받는다 id를 담는다
		String personalEmail = request.getParameter("personalEmail");			
		String personalName = request.getParameter("personalName");
		String personalPhone = request.getParameter("personalPhone");
		
		ModifyMemberDTO mdMemberDTO = new ModifyMemberDTO();		//DTO 생성
		mdMemberDTO.setMemNo(memNo);
		mdMemberDTO.setMemId(personalId);
		mdMemberDTO.setEmail(personalEmail);
		mdMemberDTO.setMemName(personalName);
		mdMemberDTO.setMemPhone(personalPhone);
		
		
		PersonalInfoService personalInfoService = new PersonalInfoService();	//service를 생성
		int result = personalInfoService.modifyPersonalInfo(mdMemberDTO);		//service에 modifypersonalInfo 메소드를 담는다
		
		if(result > 0) {
			String path = "/WEB-INF/views/main/InMainPage.jsp";							//성공하면 mainpPage로 보낸다.
			request.getRequestDispatcher(path).forward(request, response);			
		}else {
			 request.setAttribute("message", "회원정보 수정실패");
		}
		
	}

}