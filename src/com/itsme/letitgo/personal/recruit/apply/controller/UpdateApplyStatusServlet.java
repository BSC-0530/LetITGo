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
	
		int resumeNo = Integer.parseInt(request.getParameter("resumeNo"));
		int jobPostNo = Integer.parseInt(request.getParameter("jobPostNo"));

		Map<String, Object> map = new HashMap<>();
		map.put("resumeNo", resumeNo);
		map.put("jobPostNo", jobPostNo);
		
		UpdateApplyStatusService service = new UpdateApplyStatusService();
		
		int result = service.updateApplyStatus(map);
		int result2 = service.insertApplyStatus(map);
				
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0 ) {
			redirectText.append("<script>alert('지원취소가 정상적으로 처리되었습니다..'); location.href='../../apply/select';</script>");
		} else {
			redirectText.append("<script>alert('지원취소를 실패하셨습니다..'); location.href='../../apply/select';</script>");
		}
		 								
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}

}
