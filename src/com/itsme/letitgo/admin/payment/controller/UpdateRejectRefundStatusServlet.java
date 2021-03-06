package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.service.UpdateRefundStatusService;
import com.itsme.letitgo.admin.recruit.jobposting.model.service.UpdatePostRequestRejectService;

/* 관리자 -> 환불 요청 관리 -> 환불 거절 */
@WebServlet("/admin/refund/reject/update")
public class UpdateRejectRefundStatusServlet extends HttpServlet {
			
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		/* 페이지전환하면서 결제변경번호와 결제번호를 가져와서 환불요청메세지 작성화면에 전달 */
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));
		int payNo = Integer.parseInt(request.getParameter("payNo"));

		/* request에 조회한 내용들을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		request.setAttribute("payChangeNo", payChangeNo);
		request.setAttribute("payNo", payNo);
		String path = "/WEB-INF/views/admin/adminRefundRejectMessage.jsp";
		request.getRequestDispatcher(path).forward(request, response);
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
			
		/* jsp로부터 거절메세지, 결제변경요청번호, 결제번호를 받아옴 */
		String rejectMessage = request.getParameter("rejectMessage");
		String payChangeNo = request.getParameter("payChangeNo");
		String payNo = request.getParameter("payNo");
		
		UpdateRefundStatusService UpdateRefundStatus = new UpdateRefundStatusService();	
	
		/* 거절사유, 결제변경번호, 결제번호를 담아서 전달 */
		Map<String, Object> map = new HashMap<>();
		map.put("rejectMessage", rejectMessage);
		map.put("payChangeNo", payChangeNo);
		map.put("payNo", payNo);
		
		/* 결제변경이력에 거절사유를 입력하고 상태를 환불거절로 변경 */
		int result1 = UpdateRefundStatus.updateRefundRejectStatus1(map);

		/* 결제의 상태를 환불거절로 변경 */
		int result2 = UpdateRefundStatus.updateRefundRejectStatus2(map);

		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청을 거절하셨습니다.'); location.href='../../refund/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청거절을 실패하셨습니다.'); location.href='../../refund/select';</script>");
		}
		 				
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}
}
