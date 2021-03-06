package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.service.RefundHistoryService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

/* home -> 기업 마이페이지 -> 환불 내역 */
@WebServlet("/company/refundHistory/select")
public class SelectRefundHistoryServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RefundHistoryService refundHistoryService = new RefundHistoryService();
		
		/* 세션에서 값 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
		/* 환불내역 가져오기 */
		List<RefundHistoryDTO> refundHistoryList = refundHistoryService.selectRefundHistoryList(memNo);
		
		/* request에 조회한 내용을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/payment/refundHistory.jsp";
		request.setAttribute("refundHistoryList", refundHistoryList);		
		request.getRequestDispatcher(path).forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		/* 취소버튼클릭시 결제변경요청번호를 jsp로부터 받아옴 */
		int payChangeNo = Integer.parseInt(request.getParameter("refundNo"));
	
		RefundHistoryService refundHistoryService = new RefundHistoryService();
		
		/* 결제상태변경이력을 환불요쳥취소로 변경 */
		int result = refundHistoryService.updateRefundRequest(payChangeNo);
		
		/* 결제내역을 결제완료로 변경 */
		int result2 = refundHistoryService.updateRefundRequest2(payChangeNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청이 정상적으로 취소되었습니다.'); location.href='../../company/refundHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청취소를 실패하였습니다.'); location.href='../../company/refundHistory/select';</script>");
		}
		 				
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
	}
}
