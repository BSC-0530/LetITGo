package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundRequestProductDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class InsertRefundRequestProductService {

	/* 결제번호, 회원번호를 통해서 환불할 상품정보를 받아옴 */
	public RefundRequestProductDTO selectRefundRequestProduct(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundRequestProduct = session.getMapper(PaymentMapper.class);
		
		RefundRequestProductDTO productList = refundRequestProduct.selectRefundRequestProduct(map);
		
		session.close();
		
		return productList;
		
		
	}
	
	/* 환불요청을 함으로 결제상태변경이력 추가 */
	public int insertRefundMessage(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundMessage = session.getMapper(PaymentMapper.class);
		
		int result = refundMessage.insertRefundMessage(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	/* 환불요청을 함으로써 결제내역 변경 */
	public int updatePaymentStatus(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper PaymentStatus = session.getMapper(PaymentMapper.class);
		
		int result = PaymentStatus.updatePaymentStatus(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;

	}

	

}
