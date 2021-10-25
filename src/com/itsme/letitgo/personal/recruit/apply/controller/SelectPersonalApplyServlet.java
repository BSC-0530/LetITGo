package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.service.SelectPersonalApplyService;

/* home -> 개인마이페이지 -> 지원현황 */
@WebServlet("/personal/apply/select")
public class SelectPersonalApplyServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 세션에서 로그인된 회원의 번호 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
        SelectPersonalApplyService service = new SelectPersonalApplyService();
        
		/* 전체지원조회 */
		List<SelectPersonalApplyDTO> PersonalApplyList = service.selectPersonalApply(memNo);
		
		/* 지원완료조회 */
		List<SelectPersonlCompletedApplyDTO> PersonalApplyCompletedList = service.selectPersonalCompletedApply(memNo);
		
		/* 지원취소조회 */
		List<SelectPersonlCanceledApplyDTO> PersonalApplyCanceledList = service.selectPersonalCanceledApply(memNo);

		String path = "/WEB-INF/views/member/personal/personalApply.jsp";	
		
		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		request.setAttribute("PersonalApplyList", PersonalApplyList);
		request.setAttribute("PersonalApplyCompletedList", PersonalApplyCompletedList);
		request.setAttribute("PersonalApplyCanceledList", PersonalApplyCanceledList);
		request.getRequestDispatcher(path).forward(request, response);

	}


}
