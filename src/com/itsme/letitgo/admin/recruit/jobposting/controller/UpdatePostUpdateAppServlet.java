package com.itsme.letitgo.admin.recruit.jobposting.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;
import com.itsme.letitgo.admin.recruit.jobposting.model.service.SelectPostRequestService;
import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostUpdateAppService;

/* 관리자 -> 공고수정요청 -> 승인 */
@WebServlet("/admin/post/update/app/update")
public class UpdatePostUpdateAppServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 승인버튼클릭시 해당 공고에 지원한 이력서번호와 공고번호를 jsp로부터 받아옴 */
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));
		int jobPostReqNo = Integer.parseInt(request.getParameter("jobPostReqNo"));
		
		UpdatePostUpdateAppService service = new UpdatePostUpdateAppService();
		
		/* 요청번호를 통해서 수정전 채용공고번호를 가져옴 */
		int changeReqJobPostNo = service.selectChangeReqJobPostNo(jobPostReqNo);
		
		/* 채용공고의 분류를 승인된 공고로 변경 */
		int result1 = service.updatePostUpdateApp1(jobPostNo);
		
		/* 채용공고 승인여부이력의 응답구분을 승인으로 변경 */
		int result2 = service.updatePostUpdateApp2(jobPostReqNo);
		
		/* 수정완료전공고의 분류를 수정완료전공고 로 변경 */
		int result3 = service.updatePostUpdateApp3(changeReqJobPostNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			redirectText.append("<script>alert('채용공고수정을 승인하셨습니다.'); location.href='../../updateRequest/select';</script>");
		} else {
			redirectText.append("<script>alert('채용공고수정승인에 실패하셨습니다.'); location.href='../../updateRequest/select';</script>");
		}
		 
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */						
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}


}
