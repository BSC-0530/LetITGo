package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostUpdateRejectService;

/* 관리자 -> 공고수정요청 -> 거절 */
@WebServlet("/admin/post/update/reject/update")
public class UpdatePostUpdateRejectServlet extends HttpServlet {
	
	/* 같은  기능안의 같은 채용공고번호와 채용공고등록요청번호를 사용하기 때문에 거절메세지 작성 화면과 공유*/
	private int jobPostNo;
	private int jobPostReqNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 거절할 시 어떤 채용공고를 거절한지 알아야 하기 때문에, JSP로부터 채용공고번호와 채용공고등록요청번호를 받음 */
		jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));
		
		String path = "/WEB-INF/views/admin/adminPostUpdateRejectMessage.jsp";
		
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		/* 거절사유등록시 거절사유를 jsp로부터 받아옴 */
		String rejectMessage = request.getParameter("rejectMessage");	

		UpdatePostUpdateRejectService updatePostRejectUpdateApp = new UpdatePostUpdateRejectService();	
	
		/* 공고번호, 공고승인요청번호, 거절사유를 묶어서 전달 */
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("jobPostNo", jobPostNo);
		map.put("jobPostReqNo", jobPostReqNo);
		
		/* 채용공고의 분류를 거절된 공고로 변경 */
		int result1 = updatePostRejectUpdateApp.updatePostRejectRequest1(map);		
		
		/* 채용공고 승인여부이력의 응답구분을 승인으로 변경 */
		int result2 = updatePostRejectUpdateApp.updatePostRejectRequest2(map);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('채용공고수정을 거절하셨습니다.'); location.href='../../updateRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고수정 거절을 실패하셨습니다.'); location.href='../../updateRequest/select';</script>");
		}
		 					
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
