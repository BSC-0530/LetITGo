package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import java.io.PrintWriter;

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

        int memNo = dto.getMemNo();
		
		CompanyInfoDTO coMemDTO = new CompanyInfoService().selectCoMemInfo(memNo);
        
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
		
			CompanyInfoDTO dto = new CompanyInfoDTO();
		
	     dto.setMemName(name);
	     dto.setMemId(id);
	     dto.setMemPhone(phone);
	     dto.setMemEmail(email);
		
		int result = new CompanyInfoService().modifyCoMemInfo(dto);

		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		response.setCharacterEncoding("UTF-8");

		if(result > 0) {
			out.println("<script>alert('회원정보가 변경되었습니다. 재로그인해주세요.'); location.href='/let/loginPage';</script>");
			out.flush();
		}else {
			System.out.println("실패");
		}
	}

}
