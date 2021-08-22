package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.service.CheckPwdService;

@WebServlet("/login/check/pwd")
public class CheckPwdServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "";
		
		path = "/WEB-INF/views/common/login/checkPwd.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
		
		int memNo = dto.getMemNo();
		String memPwd = dto.getMemPwd();
		
		System.out.println("memNo : " + memNo);
		
		String rawMemPwd = request.getParameter("memPwd");
		System.out.println("memPwd : " + memPwd);
		
		String memPwd2 = new BCryptPasswordEncoder().encode(rawMemPwd);
		System.out.println("memPwd2 : " + memPwd2);
		
		
		String path = "";
		
		StringBuilder redirectText = new StringBuilder();
		
		//BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		
		if(memPwd.equals(memPwd2)) {
//		if(encoder.matches(dto.getMemPwd(), memPwd2)) {
//		if(memPwd == memPwd2) {
			
			int result = new CheckPwdService().memEntYnStatus(memNo);
			
			if(result > 0) {
				redirectText.append("<script>alert('탈퇴가 정상적으로 되었습니다.'); location.href='/let/loginPage';</script>");
				
				request.getSession().invalidate();
				response.sendRedirect(request.getContextPath());
			}  else {
				redirectText.append("<script>alert('탈퇴요청에 실패하였습니다.'); location.href='../../main/InMemberPage';</script>");
			}
		} else {
			
			redirectText.append("<script>alert('비밀번호를 다시 한번 확인해주세요.'); location.href='../../main/InMemberPage';</script>");
		}		

		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}

}
