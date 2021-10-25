package com.itsme.letitgo.login.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.login.model.service.ForgetService;

/* home -> 로그인 -> 아이디찾기 */
@WebServlet("/member/forgetId")
public class ForgetId extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/common/login/forgetId.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 사용자가 입력한 이메일을 받음 */
		String memEmail = request.getParameter("memEmail");

		ForgetService service = new ForgetService();
		
		/* 이메일을 통해서 아이디를 조회 */
		String memId = service.selectFogetId(memEmail);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(memId == null) {
			
			redirectText.append("<script>alert('입력하신 이메일로 가입된 회원이 없습니다.'); location.href='/let/loginPage';</script>");			
					
		} else {
			
			redirectText.append("<script>\n")
            .append("alert('당신의 아이디는 ")
            .append(memId)
            .append(" 입니다.'); ")
            .append("location.href='/let/loginPage'; </script>");
						
		}
		
		/* redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}
}
