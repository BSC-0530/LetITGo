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

@WebServlet("/personal/apply/status/update")
public class UpdateApplyStatusServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String resumeNo = request.getParameter("resumeNo");
		String jobPostNo = request.getParameter("jobPostNo");

		Map<String, String> map = new HashMap<>();
		map.put("resumeNo", resumeNo);
		map.put("jobPostNo", jobPostNo);
		
		UpdateApplyStatusService service = new UpdateApplyStatusService();
		
		int result = service.updateApplyStatus();
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0) {
			redirectText.append("<script>alert('환불요청이 정상적으로 취소되었습니다.'); location.href='../../company/refundHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청취소가 실패하였습니다.'); location.href='../../company/refundHistory/select';</script>");
		}
		 								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
