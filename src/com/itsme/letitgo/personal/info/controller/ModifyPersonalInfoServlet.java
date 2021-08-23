package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;
import java.io.PrintWriter;

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
		/*클라이언트가 필요한 정보를 담는다.*/
		int memNo = Integer.parseInt(request.getParameter("memNo"));
		/*memNo를 등록한다.*/
		request.setAttribute("memNo",memNo);
		
		String path = "/WEB-INF/views/member/personal/modifypersoanlmain.jsp";
		/*WEB-INF/views/member/personal/modifypersoanlmain.jsp 여기로 forwarding 한다.*/
		request.getRequestDispatcher(path).forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*UTF-8로 인코딩 한다.*/
		request.setCharacterEncoding("UTF-8"); 
		/*클라이언트가 필요한 정보를 담는다.*/
		int memNo = Integer.parseInt(request.getParameter("memNo"));	
		String personalEmail = request.getParameter("personalEmail");			
		String personalName = request.getParameter("personalName");
		String personalPhone = request.getParameter("personalPhone");
		
		/*DTO를 생성한다.*/
		ModifyMemberDTO mdMemberDTO = new ModifyMemberDTO();		
		mdMemberDTO.setMemNo(memNo);
		mdMemberDTO.setEmail(personalEmail);
		mdMemberDTO.setMemName(personalName);
		mdMemberDTO.setMemPhone(personalPhone);
		
		/*personalInfoService(서비스) 생성한다.*/
		PersonalInfoService personalInfoService = new PersonalInfoService();
		/*result 변수를 선언하고 modifyPersonalInfo 메소드를 생성한다. 그리고 mdMemberDTO을 데리고 간다.*/
		int result = personalInfoService.modifyPersonalInfo(mdMemberDTO);		
		
		/*StringBuilder는 String과 문자열을 더할 때 새로운 객체를 생성하는 것이 아니라 기존의 데이터에 더하는 방식*/
		StringBuilder redirectText = new StringBuilder();
		
		
		if(result> 0) {
			/*성공시*/
			redirectText.append("<script>alert('회원정보 수정에 성공하셨습니다.'); location.href='let/personalMyInfo';</script>");
		} else {
			/*실패시*/
			redirectText.append("<script>alert('회원정보 수정에 실패하셨습니다.'); location.href='let/personalMyInfo';</script>");
		}
		/*응답 시 한글 처리*/			
		response.setContentType("text/html; charset=UTF-8");
		
		/*PrintWriter을 out 으로 선언해준다.*/
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}

}