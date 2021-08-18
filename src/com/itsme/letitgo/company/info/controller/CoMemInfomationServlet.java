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
        
//		System.out.println("@@@@@@" + coMemDTO);
        System.out.println();
        System.out.println("핸드폰 번호 : " + dto.getMemPhone());
		
		String path="";
		
		request.setCharacterEncoding("UTF-8");
		request.setAttribute("coMemDTO", dto);

		path="/WEB-INF/views/member/company/companyMemInfoPage.jsp";
		request.getRequestDispatcher(path).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
