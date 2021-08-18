package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.service.CompanyInfoService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

@WebServlet("/coMem/infomationServlet")
public class CoMemInfomationServlet extends HttpServlet {
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();

        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");

//        int memNo = dto.getMemNo();
//		System.out.println(memNo);
		
//		CompanyInfoDTO coMemDTO = new CompanyInfoService().selectCoMemInfo();
        
		System.out.println("@@@@@@");
        System.out.println(dto.getMemId());
        System.out.println("핸드폰 번호 : " + dto.getMemPhone());
		
		String path="";
		
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("coMemDTO", dto);

		path="/WEB-INF/views/member/company/companyMemInfoPage.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String email = request.getParameter("memEmail");
		String id = request.getParameter("memId");
		String phone = request.getParameter("phone");
		String name = request.getParameter("memName");
		System.out.println(email);
		System.out.println("아이디 왜안나오니" + id);
		System.out.println(phone);
		System.out.println(name);
		
//			HttpSession session = request.getSession();
//			MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
			CompanyInfoDTO dto = new CompanyInfoDTO();
//	     int memNo = dto.getMemNo();
		
	     dto.setMemName(name);
	     dto.setMemId(id);
	     dto.setMemPhone(phone);
	     dto.setMemEmail(email);
		
		int result = new CompanyInfoService().modifyCoMemInfo(dto);

//		response.setContentType("text/html; charset=UTF-8");
		String path="";
		if(result > 0) {
			System.out.println("성공");
			path="/WEB-INF/views/member/company/companyMemInfoPage.jsp";
			
		}else {
			System.out.println("실패");
		}
		response.setCharacterEncoding("UTF-8");
		response.sendRedirect("/let/coMem/infomationServlet");
	}

}
