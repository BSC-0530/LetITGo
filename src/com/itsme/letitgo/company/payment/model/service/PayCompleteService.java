package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class PayCompleteService {

	public ProductDTO SelectProduct(String productName) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		ProductDTO product = mapper.SelectProduct(productName);
		
		session.close();
		
		return product;
	
				
	}

	public int insertPaymentReadingRightHistory(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		int result = mapper.insertPaymentReadingRightHistory(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	public int insertHoldingReadingRightProduct(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		int result = mapper.insertHoldingReadingRightProduct(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int insertPaymentExposureRightHistory(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		int result = mapper.insertPaymentExposureRightHistory(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int insertHoldingExposureRightProduct(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		int result = mapper.insertHoldingExposureRightProduct(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}


}
