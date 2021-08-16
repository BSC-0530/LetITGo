package com.itsme.letitgo.company.info.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.dto.ModifyChageDTO;
import com.itsme.letitgo.company.info.model.service.CompanyModifyService;


@WebServlet("/company/resetpassword")
public class ResetPassword extends HttpServlet {
	
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		  String path = "/WEB-INF/views/member/company/companyresetpassword.jsp";
	      
	      request.getRequestDispatcher(path).forward(request, response);

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO();
		
		String userId = companyInfoDTO.getMemId();
		String userNowPwd = request.getParameter("memPwd");
		String userNewPwd = request.getParameter("NewPwd");
		String userNewPwdCheck = request.getParameter("newPwdCheck");
		
		
		ModifyChageDTO modifyChangeDTO = new ModifyChageDTO();
		
		modifyChangeDTO.setMemberId(userId);
		modifyChangeDTO.setNowPwd(userNowPwd);
		modifyChangeDTO.setNewPwd(userNewPwd);
		
		System.out.println(userId);
		
	
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		
		 if (passwordEncoder.matches(userNewPwdCheck, userNewPwd)) {
				 
				 CompanyModifyService companyModifyService = new CompanyModifyService();
		         int MemberPWDUpdate = companyModifyService.PwdCheck(modifyChangeDTO);
		         
		         if(MemberPWDUpdate > 0) {
		            response.sendRedirect(request.getContextPath());  
		            System.out.println(request.getContextPath()); 
		            
		         } else {
		            request.setAttribute("message", "비밀번호 변경실패");
		            request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		         }
		         
		      } else {
		         System.out.println("비밀번호가 다릅니다.");
		      }
	}
}