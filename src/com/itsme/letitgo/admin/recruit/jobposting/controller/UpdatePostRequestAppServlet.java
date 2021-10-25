package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostRequestAppService;

/* 관리자 -> 공고등록요청 -> 승인 */
@WebServlet("/admin/post/app/update")
public class UpdatePostRequestAppServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 승인버튼클릭시 해당 공고에 지원한 이력서번호와 공고번호를 jsp로부터 받아옴 */
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		int jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));
		
		UpdatePostRequestAppService service = new UpdatePostRequestAppService();

		/* 채용공고의 분류를 승인된 공고로 변경 */
		int result1 = service.updatePostRequestApp1(jobPostNo);
		
		/* 채용공고 승인여부이력 응답구분을 승인으로 변경 */
		int result2 = service.updatePostRequestApp2(jobPostReqNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('채용공고등록을 승인하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고등록승인에 실패하셨습니다.'); location.href='../../post/insertRequest/select';</script>");
		}
									
		/* redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
		
	}

	
}
