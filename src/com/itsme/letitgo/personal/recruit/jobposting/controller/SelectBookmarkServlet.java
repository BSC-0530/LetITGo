package com.itsme.letitgo.personal.recruit.jobposting.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.BookmarkDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.service.SelectJobPostingService;

@WebServlet("/personal/bookmark/select")
public class SelectBookmarkServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		
		MemberLoginDTO comDTO1 = (MemberLoginDTO) session.getAttribute("loginMember");
		//로그인된 멤버 번호
		int inMemNo = comDTO1.getMemNo();
		
		List<BookmarkDTO> bookmarkList = new SelectJobPostingService().selectBookmark(inMemNo);
		
		request.setAttribute("bookmarkList", bookmarkList);
		request.getRequestDispatcher("/WEB-INF/views/member/personal/personalRecruitBookmark.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
