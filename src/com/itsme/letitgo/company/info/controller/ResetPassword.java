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
		
		
		  int memNO = Integer.parseInt(request.getParameter("memNO"));
		  
		  request.setAttribute("memNO",memNO);
		
		  String path = "/WEB-INF/views/member/company/companyresetpassword.jsp";
	      
	      request.getRequestDispatcher(path).forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		request.setCharacterEncoding("UTF-8");				//UTF-8로 바꾼다. 하지만 한글적을떄 필요하니까 여기선 필요없을꺼같다
		
		String nowPwd = request.getParameter("nowPwd");			//view에서 nowPwd text 담기
		String newPwd = request.getParameter("newPwd");
//		String newPwdCheck = request.getParameter("newPwdCheck");
		
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO();	//DTO 생성
		
		companyInfoDTO.setMemPwd(nowPwd);
		companyInfoDTO.setMemPwd(newPwd);
//		companyInfoDTO.setMemPwd(newPwdCheck);	//여기서 newPwdCheck를 안쓴이유는 유효성검사기때문이다
		
		CompanyModifyService companyModifyService = new CompanyModifyService(); 	//서비스 생성
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();  //암호화 생성
		
//		String newPassword = passwordEncoder.encode(arg0);			//암호화 변수 추가
//		
//		if(passwordEncoder.matches(newPwd, newPassword))
//		
		
		
		int result = companyModifyService.resetPassword(companyInfoDTO);		//서비스에 resetPassword(companyInfoDTO) 메소드를 넣는다.
		
		if(result > 0) {
			
			String path = "/WEB-INF/views/main/InMainPage.jsp";
			request.getRequestDispatcher(path).forward(request, response);
		
		}else {
			
			
		}
		
	}
}