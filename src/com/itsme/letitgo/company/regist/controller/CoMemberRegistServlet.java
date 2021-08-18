package com.itsme.letitgo.company.regist.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.service.CoMemberService;


@WebServlet("/member/coporateRegist")
public class CoMemberRegistServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String path = "/WEB-INF/views/common/register/CoRegister.jsp";

		request.getRequestDispatcher(path).forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String memId = request.getParameter("cmemId");
		String memEmail = request.getParameter("memEmail");
		String memPwd = request.getParameter("cmemPwd");
		String memName = request.getParameter("cmemName");
		String memPhone = request.getParameter("cmemPhone");
		String coIntro = request.getParameter("coIntro");
		String coNo = request.getParameter("coNo");
		String coComName = request.getParameter("coComName");
		String coCeoName = request.getParameter("coCeoName");
		String coAddress =request.getParameter("address1") + "$" + request.getParameter("address2") + "$" + request.getParameter("zipCode"); 
		String coPhone = request.getParameter("coPhone");
		String coPax = request.getParameter("coPax");
		String coSectors = request.getParameter("coSectors");
		String coStatus = request.getParameter("coStatus");
		String coWebsite = request.getParameter("coWebsite");

		System.out.println("memId : " + memId);
		System.out.println("memEmail : " + memEmail);
		System.out.println("memPwd : " + memPwd);
		System.out.println("memName : " + memName);
		System.out.println("memPhone : " + memPhone);
		System.out.println("coIntro : " + coIntro);
		System.out.println("coNo : " + coNo);
		System.out.println("coComName : " + coComName);
		System.out.println("coCeoName : " + coCeoName);
		System.out.println("coAddress : " + coAddress);
		System.out.println("coPhone : " + coPhone);
		System.out.println("coPax : " + coPax);
		System.out.println("coSectors : " + coSectors);
		System.out.println("coStatus : " + coStatus);
		System.out.println("coWebsite : " + coWebsite);
		
		CoMemberDTO coMember = new CoMemberDTO();
		coMember.setMemId(memId);
		coMember.setMemEmail(memEmail);
		coMember.setMemPwd(memPwd);
		coMember.setMemName(memName);
		coMember.setMemPhone(memPhone);
		coMember.setCoIntro(coIntro);
		coMember.setCoNo(coNo);
		coMember.setCoComName(coComName);
		coMember.setCoCeoName(coCeoName);
		coMember.setCoAddress(coAddress);
		coMember.setCoPhone(coPhone);
		coMember.setCoPax(coPax);
		coMember.setCoSectors(coSectors);
		coMember.setCoStatus(coStatus);
		coMember.setCoWebsite(coWebsite);

		CoMemberService serivce = new CoMemberService();
		
		Map<String, Object> result = serivce.registCoMember(coMember);
		
		StringBuilder redirectText = new StringBuilder();
		
		if((int) result.get("result1") > 0 && (int) result.get("result1") > 0) {
			redirectText.append("<script>alert('회원가입이 완료되었습니다.'); location.href='/let/loginPage';</script>");
		} else {
			redirectText.append("<script>alert('회원가입을 실패하였습니다.'); location.href='/let/loginPage';</script>");
		}
								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
