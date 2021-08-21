package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class PayCompleteService {

	/* 상품이름으로 상품정보 가져오기 */
	public ProductDTO SelectProduct(String productName) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		ProductDTO product = mapper.SelectProduct(productName);
		
		session.close();
		
		return product;
	
				
	}

	 /* 열람권 결제내역 추가*/
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
	
	/* 열람권  회원보유상품 추가 */
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
	
	/* 노출권 결제내역 추가*/
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

	/* 노출권 회원보유상품 추가 */
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
