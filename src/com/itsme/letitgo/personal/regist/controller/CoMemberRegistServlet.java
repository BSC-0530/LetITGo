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

//	private int no;
//	private String id;
//	private String email;
//	private String pwd;
//	private String name;
//	private String phone;
//	private String kinds;
//	private Date enrollDate;
//	private String entYn;
//	private Date entDate;
//	
//	//이따 변수명 coMem으로 시작하게 만들기
//	private int memNo;			//기업회원번호
//	private String intro;		//회사 소개글
//	private String coNo;		//사업자 등록 번호
//	private String comName;		//기업 이름
//	private String ceoName;     //대표자 이름
//	private String address; 	//주소
//	private String coPhone; 	//사업장 전화번호
//	private String fax;			//사업장 팩스번호
//	private String sectors;		//업종
//	private String status;		//업태
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/*기본적인사항*/
		String memberId = request.getParameter("memberId");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String kinds = request.getParameter("kinds");
		java.sql.Date enrollDate = java.sql.Date.valueOf(request.getParameter("enrollDate"));
		String entYn = request.getParameter("entYn");
		java.sql.Date entDate = java.sql.Date.valueOf(request.getParameter("entDate"));
		/*기업 상세사항*/
		String intro = request.getParameter("intre");
		String coNo = request.getParameter("coNo");
		String comName = request.getParameter("comName");
		String ceoName = request.getParameter("ceoName");
		String coAddress = request.getParameter("coAddress");
		String coPhone = request.getParameter("coPhone");
		String fax = request.getParameter("pax");
		String sectors = request.getParameter("sectors");
		String status = request.getParameter("status");
		
		CoMemberDTO coMemberDTO = new CoMemberDTO();
		coMemberDTO.setId(memberId);
		coMemberDTO.setPwd(pwd);
		coMemberDTO.setEmail(email);
		coMemberDTO.setName(name);
		coMemberDTO.setKinds(kinds);
		coMemberDTO.setPhone(phone);
		coMemberDTO.setEnrollDate(enrollDate);
		coMemberDTO.setEntYn(entYn);
		coMemberDTO.setEntDate(entDate);
		coMemberDTO.setIntro(intro);
		coMemberDTO.setCoNo(coNo);
		coMemberDTO.setComName(comName);
		coMemberDTO.setCeoName(ceoName);
		coMemberDTO.setAddress(coAddress);
		coMemberDTO.setPhone(coPhone);
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
