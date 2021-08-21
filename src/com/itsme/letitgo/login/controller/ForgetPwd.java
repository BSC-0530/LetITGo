package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.login.model.service.ForgetService;

@WebServlet("/member/forgetPwd")
public class ForgetPwd extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/common/login/forgetPwd.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memId = request.getParameter("memId");
		String memEmail = request.getParameter("memEmail");
		
		System.out.println("memId : " + memId);
		System.out.println("memEmail : " + memEmail);
		
		Map<String, String> map = new HashMap<>();
		map.put("memId", memId);
		map.put("memEmail", memEmail);
		
		ForgetService service = new ForgetService();
		
		int checkIdEmail = service.checkIdEmail(map);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(checkIdEmail > 0) {
			
			String rawMemPwd = null;
			String memPwd = null;
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			
			for(int i = 0; i < 10; i++) {
				
				int rIndex = rnd.nextInt(3);
				switch(rIndex) {
				case 0: temp.append((char) ((int) (rnd.nextInt(26)) + 97)); break;
				case 1: temp.append((char) ((int) (rnd.nextInt(26)) + 65)); break;
				case 2: temp.append((rnd.nextInt(10))); break;
				}
				
			}
			
			rawMemPwd = temp.toString();
			memPwd = new BCryptPasswordEncoder().encode(rawMemPwd);
	        System.out.println("rawMemPwd : " + rawMemPwd );
	        System.out.println("memPwd : " + memPwd);
	        
	        Map<String, String> updateMap = new HashMap<>();
	        updateMap.put("memId", memId);
	        updateMap.put("memPwd", memPwd);
	        
	        int result = service.updateMemPwd(updateMap);
			System.out.println("result : " + result);
	
			redirectText.append("<script>\n")
			            .append("alert('당신의 임시비밀번호는 ")
			            .append(rawMemPwd)
			            .append(" 입니다.'); ")
			            .append("location.href='/let/loginPage'; </script>");
			          
			
	       
	        
		} else {
			
			redirectText.append("<script>alert('아이디 또는 이메일이 일치하지 않습니다.' ); location.href='/let/loginPage';</script>");
			
		}
		 								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
		
	}

}
