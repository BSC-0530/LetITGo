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

/* home -> 로그인 -> 비밀번호 찾기 */
@WebServlet("/member/forgetPwd")
public class ForgetPwd extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "/WEB-INF/views/common/login/forgetPwd.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String memId = request.getParameter("memId");
		String memEmail = request.getParameter("memEmail");

		Map<String, String> map = new HashMap<>();
		map.put("memId", memId);
		map.put("memEmail", memEmail);
		
		ForgetService service = new ForgetService();
		
		/* 아이디와 이메일을 통해 존재하는 회원이 있는지 확인  */
		int checkIdEmail = service.checkIdEmail(map);
		
		StringBuilder redirectText = new StringBuilder();
		
		/* 존재하는 회원일 경우  */
		if(checkIdEmail > 0) {
			
			String rawMemPwd = null;
			String memPwd = null;
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			
			/* 비밀번호에 새로 넣을 난수를 만듬 */
			for(int i = 0; i < 10; i++) {
				
				int rIndex = rnd.nextInt(3);
				switch(rIndex) {
				case 0: temp.append((char) ((int) (rnd.nextInt(26)) + 97)); break;
				case 1: temp.append((char) ((int) (rnd.nextInt(26)) + 65)); break;
				case 2: temp.append((rnd.nextInt(10))); break;
				}
				
			}
			
			/* 난수만든 것을 암호화함 */
			rawMemPwd = temp.toString();
			memPwd = new BCryptPasswordEncoder().encode(rawMemPwd);
	    
			/* 아이디에 암호회된 비밀번호를 넣어주기위해 map 담아서 이동 */
	        Map<String, String> updateMap = new HashMap<>();
	        updateMap.put("memId", memId);
	        updateMap.put("memPwd", memPwd);
	        
	        /* 아이디에 암호회된 비밀번호를 넣어줌 */
	        int result = service.updateMemPwd(updateMap);
			redirectText.append("<script>\n")
			            .append("alert('당신의 임시비밀번호는 ")
			            .append(rawMemPwd)
			            .append(" 입니다.'); ")
			            .append("location.href='/let/loginPage'; </script>");
			          
			
	       
	    /* 아이디와 이메일이 일치하는 것이 없는 경우 */
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
