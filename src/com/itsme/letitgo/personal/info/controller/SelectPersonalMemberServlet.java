package com.itsme.letitgo.personal.info.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.info.model.service.SelectBrowsingNumService;

/* home -> 개인마이페이지 */
@WebServlet("/personal/myPage/select")
public class SelectPersonalMemberServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		SelectBrowsingNumService service = new SelectBrowsingNumService();
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
		/* 스카우트 얕은열람 당한 횟수 조회 */
		int shallowBrowsingNum = service.selectShallowBrowsingNum(memNo);
		
		/* 스카우트 깊은열람 당한 횟수 조회 */
		int deepBrowsingNum = service.selectDeepBrowsingNum(memNo);
		
		/* 스카우트 면접제안 당한 횟수 조회 */
		int interviewProposalNum = service.selectInterviewProposalNum(memNo);
		
		/* 지원완료한 횐수 */
		int applicationCompletedNum = service.selectApplicationCompletedNum(memNo);
		
		/* 지원취소한 횟수 */
		int applicationCanceledNum = service.selectApplicationCanceledNum(memNo);
		
		/* 북마크한 횟수 */
		int bookmarkNum = service.selectBookmarkNum(memNo);

		String path = "/WEB-INF/views/member/personal/personalMyPage.jsp";	
		
		request.setAttribute("shallowBrowsingNum", shallowBrowsingNum);
		request.setAttribute("deepBrowsingNum", deepBrowsingNum);
		request.setAttribute("interviewProposalNum", interviewProposalNum);
		request.setAttribute("applicationCompletedNum", applicationCompletedNum);
		request.setAttribute("applicationCanceledNum", applicationCanceledNum);
		request.setAttribute("bookmarkNum", bookmarkNum);
		request.getRequestDispatcher(path).forward(request, response);
		
	}

}
