package com.itsme.letitgo.personal.regist.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;
import com.itsme.letitgo.personal.regist.model.service.MemberService;


@WebServlet("/regist/coMember")
public class CoMemberRegistServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String path = "";
		
		request.getRequestDispatcher(path).forward(request, response);
	}


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*기본적인사항*/
		String memberId = request.getParameter("memberId");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String kinds = request.getParameter("kinds");
		java.sql.Date enrollDate = java.sql.Date.valueOf(request.getParameter("enrollDate"));
		int entYn = Integer.parseInt(request.getParameter("entYn"));
		java.sql.Date entDate = java.sql.Date.valueOf(request.getParameter("entDate"));
		/*기업 상세사항*/
		String intro = request.getParameter("intre");
		String coNo = request.getParameter("coNo");
		String comName = request.getParameter("comName");
		String ceoName = request.getParameter("ceoName");
		String coAddress = request.getParameter("coAddress");
		String comPhone = request.getParameter("comPhone");
		String fax = request.getParameter("pax");
		String sectors = request.getParameter("sectors");
		String status = request.getParameter("status");
		
		CoMemberDTO coMemberDTO = new CoMemberDTO();
		coMemberDTO.setCoid(memberId);
		coMemberDTO.setCoemail(email);
		coMemberDTO.setCopwd(pwd);
		coMemberDTO.setCoName(name);
		coMemberDTO.setCoPhone(phone);
		coMemberDTO.setCoKinds(kinds);
		coMemberDTO.setCoEnrollDate(enrollDate);
		coMemberDTO.setCoEntYn(entYn);
		coMemberDTO.setCoEntDate(entDate);
		coMemberDTO.setIntro(intro);
		coMemberDTO.setCoNo(coNo);
		coMemberDTO.setComName(comName);
		coMemberDTO.setCeoName(ceoName);
		coMemberDTO.setComPhone(comPhone);
		coMemberDTO.setAddress(coAddress);
		coMemberDTO.setFax(fax);
		coMemberDTO.setSectors(sectors);
		coMemberDTO.setStatus(status);
		
		int result = new MemberService().registCoMember(coMemberDTO);
		
		String page = "";
		
		if(result > 0) {
			
			page = "";
			
			request.setAttribute("successCode", "insertMember");
		}else {
			
			page ="";
			
			request.setAttribute("message", "회원 가입 실패!");
		}
	}

}
