package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.service.CompanyModifyService;


@WebServlet("/company/resetpassword")
public class ResetPassword extends HttpServlet {
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		  String memId =request.getParameter("memId");
		  
		  request.setAttribute("memId",memId);
		
		  System.out.println(memId);
		  String path = "/WEB-INF/views/member/company/companyresetpassword.jsp";
	      
	      request.getRequestDispatcher(path).forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");				//UTF-8로 바꾼다. 하지만 한글적을떄 필요하니까 여기선 필요없을꺼같다
		String memId  = request.getParameter("memId");
		String newPwd = request.getParameter("newPwd");	
		String memPwd = new BCryptPasswordEncoder().encode(newPwd);
//		String newPwdCheck = request.getParameter("newPwdCheck");
		
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO();	//DTO 생성
		companyInfoDTO.setMemId(memId);
		companyInfoDTO.setMemPwd(memPwd);
		
		CompanyModifyService companyModifyService = new CompanyModifyService(); 	//서비스 생성
		
		int result = companyModifyService.resetPassword(companyInfoDTO);		//서비스에 resetPassword(companyInfoDTO) 메소드를 넣는다.
		
		if(result > 0) {
			
			String path = "/WEB-INF/views/main/InMainPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		
		}else {
			
			
		}
		
	}
}