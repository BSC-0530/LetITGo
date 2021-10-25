package com.itsme.letitgo.company.payment.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itsme.letitgo.company.payment.model.dto.RefundRequestProductDTO;
import com.itsme.letitgo.company.payment.model.service.InsertRefundRequestProductService;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

/* home -> 기업 마이페이지 -> 결제내역 -> 환불요청 */
@WebServlet("/refund/request/insert")
public class InsertRefundReqServlet extends HttpServlet {

	/* 같은  기능안의 같은 결제번호를 사용하기 때문에 환불요청 메세지 작성 화면과 공유*/
	int payNo;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 환불요청할 시 어떤 결제를 환불할 것인지 알아야하기 때문에, JSP로부터 채용공고번호와 채용공고등록요청번호를 받음 */
		payNo = Integer.parseInt(request.getParameter("payNo"));
		
		InsertRefundRequestProductService product = new InsertRefundRequestProductService();
		
		/* 세션에서 값 꺼내오기 */
		HttpSession session = request.getSession();
        MemberLoginDTO dto = (MemberLoginDTO) session.getAttribute("loginMember");
        int memNo = dto.getMemNo();
		
        /* 결제번호와 회원번호를 통해 환불하고자하는 상품으로 정보를 받아오기 위해서 맵에 담아서 이동 */
        Map<String, Object> map = new HashMap<>();
        map.put("memNo", memNo);
        map.put("payNo", payNo);
        
		/* 결제번호, 회원번호를 통해서 환불할 상품정보를 받아옴 */
		RefundRequestProductDTO refundRequestProduct = product.selectRefundRequestProduct(map);
	
		/* request에 조회한 내용을 key, value 형식으로 담아서 forward 방식으로 해당 페이지로 이동시킴 */
		String path = "/WEB-INF/views/payment/refundRequest.jsp";
		
		request.setAttribute("refundRequestProduct", refundRequestProduct);
		request.getRequestDispatcher(path).forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		/* 환불사유 받아옴 */
		String payChangeReason = request.getParameter("refundMessage");		
		
		InsertRefundRequestProductService insertRefundRequestMessageService = new InsertRefundRequestProductService();	
		
		/* 결제번호와 환불사유를 맵으로 묶어서 넘긴다 */
		Map<String, Object> map = new HashMap<>();
		map.put("payChangeReason", payChangeReason);
		map.put("payNo", payNo);
		
		/* 환불요청을 함으로써 결제상태변경이력 추가 */
		int result = insertRefundRequestMessageService.insertRefundMessage(map);
		
		/* 환불요청을 함으로써 결제내역 변경 */
		int result2 = insertRefundRequestMessageService.updatePaymentStatus(map);
	
		StringBuilder redirectText = new StringBuilder();
		
		if(result > 0 && result2 > 0) {
			redirectText.append("<script>alert('환불요청이 정상적으로 처리되었습니다.'); location.href='../../company/paymentHistory/select';</script>");
		} else {
			redirectText.append("<script>alert('환불요청에 실패하였습니다.'); location.href='../../company/paymentHistory/select';</script>");
		}
		 					
		/* result 결과 값에 따라 redirect 방식으로 메세지를 보내면서 location.href에 해당하는 페이지로 이동시킴 */
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		out.print(redirectText.toString());
		out.flush();
		out.close();
		
	}

}