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
public class ResetPasswordServlet extends HttpServlet {
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		  /*클라이언트가 필요한 정보를 가져온다*/
		  String memId =request.getParameter("memId");
		  /*memId를 등록한다.*/
		  request.setAttribute("memId",memId);
		
		  String path = "/WEB-INF/views/member/company/companyresetpassword.jsp";
	      /*WEB-INF/views/member/company/companyresetpassword.jsp forwarding 한다.*/
	      request.getRequestDispatcher(path).forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*UTF-8로 바꾼다. 하지만 한글적을떄 필요하니까 여기선 필요없을꺼같다*/
//		request.setCharacterEncoding("UTF-8");		
		
		/*클라이언트에서 필요한  정보를 불러온다.*/
		String memId  = request.getParameter("memId");
		String newPwd = request.getParameter("newPwd");	
		/*암호화하는 코드*/
		String memPwd = new BCryptPasswordEncoder().encode(newPwd);
		
		/*DTO 선언*/
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO();	
		companyInfoDTO.setMemId(memId);
		companyInfoDTO.setMemPwd(memPwd);
		
		/*CompanyModifyService 생성*/
		CompanyModifyService companyModifyService = new CompanyModifyService(); 	
		
		/*서비스에 resetPassword(companyInfoDTO) 메소드를 넣는다.*/
		int result = companyModifyService.resetPassword(companyInfoDTO);		
		
		/*성공 시 /WEB-INF/views/main/InMainPage.jsp*/
		if(result > 0) {
			
			String path = "/WEB-INF/views/main/InMainPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		
		}else {
			
			
		}
		
	}
}