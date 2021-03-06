package com.itsme.letitgo.main.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.main.model.service.MainPageService;

@WebServlet("/mainPage/letitgo")
public class MainPageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

        /* 공고 노출권 사용중인 공고 조회 */
		MainPageService service = new MainPageService();
		Map<String, Object> resultMap = service.selectPremiumRecruit();
		
		String path = "";
		if(dto != null) {
			String memKinds = dto.getMemKinds();
			
			if(resultMap != null) {
				request.setAttribute("resultMap", resultMap);
				
				/* 기업회원 개인회원 여부에 따라서 경로를 다르게 지정 */
				if(memKinds.equals("기업회원")) {
					path = "/WEB-INF/views/main/CoMainPage.jsp";			
					
				} else {
					path = "/WEB-INF/views/main/InMainPage.jsp";	
				}
			} 
		} else {
			path = "/WEB-INF/views/main/main.jsp";
		}
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
