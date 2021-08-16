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
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		CompanyInfoDTO companyInfoDTO = new CompanyInfoDTO();
		
		String userId = companyInfoDTO.getMemId();
		
		String userNowPwd = request.getParameter("memPwd");
		String userNewPwd = request.getParameter("chagePwd");
		String userNewPwdCheck = request.getParameter("userNewPwdCheck");
		
		ModifyChageDTO modifyChangeDTO = new ModifyChageDTO();
		
		modifyChangeDTO.setMemberId(userId);
		modifyChangeDTO.setNowPwd(userNowPwd);
		modifyChangeDTO.setNewPwd(userNewPwd);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		
		 if (passwordEncoder.matches(userNewPwdCheck, userNewPwd)) {
				 
				 CompanyModifyService companyModifyService = new CompanyModifyService();
		         int MemberPWDUpdate = companyModifyService.PwdCheck(modifyChangeDTO);
		         
		         if(MemberPWDUpdate > 0) {
		            response.sendRedirect(request.getContextPath());   //경로
		            System.out.println(request.getContextPath());  //"groubear" 주소이다
		            
		         } else {
		            request.setAttribute("message", "비밀번호 변경실패");
		            request.getRequestDispatcher("/WEB-INF/views/common/failed.jsp").forward(request, response);
		         }
		         
		      } else {
		         System.out.println("비밀번호가 다릅니다.");
		      }
	}
}