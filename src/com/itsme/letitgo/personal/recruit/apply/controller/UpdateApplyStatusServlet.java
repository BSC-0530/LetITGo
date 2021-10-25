package com.itsme.letitgo.personal.recruit.apply.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.personal.recruit.apply.model.service.UpdateApplyStatusService;

/* home -> 개인마이페이지 -> 지원현황 -> 전체공고 -> 지원취소 */
@WebServlet("/personal/apply/status/update")
public class UpdateApplyStatusServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 취소버튼클릭시 해당 공고에 지원한 이력서번호와 공고번호를 jsp로부터 받아옴 */
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));

		/* 이력서번호와 채용공고를 묶어서 전달 */
		Map<String, Object> map = new HashMap<>();
		map.put("resumeNo", resumeNo);
		map.put("jobPostNo", jobPostNo);
		
		UpdateApplyStatusService service = new UpdateApplyStatusService();
		
		/* 채용공고별지원내역의 지원상태를 지원취소로 변경 */
		int result = service.updateApplyStatus(map);
		
		/* 지원내역상태변경이력을 추가 */
		int result2 = service.insertApplyStatus(map);
				
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0 ) {
			redirectText.append("<script>alert('지원취소가 정상적으로 처리되었습니다..'); location.href='../../apply/select';</script>");
		} else {
			redirectText.append("<script>alert('지원취소를 실패하셨습니다..'); location.href='../../apply/select';</script>");
		}
		 					
		/* redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
