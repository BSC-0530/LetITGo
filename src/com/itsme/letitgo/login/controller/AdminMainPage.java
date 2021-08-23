package com.itsme.letitgo.login.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.info.model.service.CountMainService;

@WebServlet("/mainPage/Admin")
public class AdminMainPage extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//기업 회원가입 요청 카운트CoMemberAppHistoryDTO
				int regist = new CountMainService().selectRegistRequestNum();
				//공고 등록 요청 카운트 PostInsertRuqeustDTO
				int posting = new CountMainService().selectPostNum();
				//공지사항 카운트PersonalInfoPolicyDTO
				int notice = new CountMainService().selectNoticeNum();
				//회원변경 카운트CoMemberAppHistoryDTO
				int infoChange = new CountMainService().selectInfoChangeNum();
				//공고 수정 카운트PostInsertRuqeustDTO
				int postingChange = new CountMainService().selectPostChangeNum();
				//1대1문의 카운트InquiryDTO
				int inquiry = new CountMainService().selectInquiryNum();
				
				String path="/WEB-INF/views/admin/adminMain.jsp";
				
				
				request.setAttribute("regist", regist);
				request.setAttribute("posting", posting);
				request.setAttribute("notice", notice);
				request.setAttribute("infoChange", infoChange);
				request.setAttribute("postingChange", postingChange);
				request.setAttribute("inquiry", inquiry);
				request.getRequestDispatcher(path).forward(request, response);
	}

}
