package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class InsertRefundRequestProductService {

	public PaymentHistoryDTO selectRefundRequestProduct(int payNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundRequestProduct = session.getMapper(PaymentMapper.class);
		
		PaymentHistoryDTO productList = refundRequestProduct.selectRefundRequestProduct(payNo);
		
		session.close();
		
		return productList;
		
		
	}
	
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

	

}
