package com.itsme.letitgo.admin.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itsme.letitgo.admin.payment.model.service.UpdateRefundStatusService;

/* 관리자 -> 환불 요청 관리 -> 환불 승인 */
@WebServlet("/admin/refund/app/update")
public class UpdateAppRefundStatusServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		/* 환불 승인시, 어떤 결제번호, 어떤 결제변경요청번호인지를 알아야하기 때문에 jsp로부터 값을 받아옴 */
		int payChangeNo = Integer.parseInt(request.getParameter("payChangeNo"));
		int payNo = Integer.parseInt(request.getParameter("payNo"));
		
		UpdateRefundStatusService service = new UpdateRefundStatusService();
		
		/* 결제상태변경이력 환불완료로 변경  */
		int result1 = service.updateRefundAppStatus(payChangeNo);
		
		/* 결제내역 환불완료로 변경 */
		int result2 = service.updateRefundAppStatus2(payNo);
		
		/* 보유상품의 상태를 환불로 변경 */
		int result3 = service.updateHoldingProductStatus(payNo);
		
		StringBuilder redirectText = new StringBuilder();
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			redirectText.append("<script>alert('환불요청을 승인하셨습니다.'); location.href='../../refund/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청승인에 실패하셨습니다.'); location.href='../../refund/select';</script>");
		}
		 
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */			
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();

	}


}
