package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class UpdateRefundStatusService {

	public int updateRefundAppStatus(int payChangeNo) {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = mapper.updateRefundAppStatus(payChangeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;

	}

	public int updateRefundAppStatus2(int payNo) {

		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = mapper.updateRefundAppStatus2(payNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int updateRefundRejectStatus1(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = mapper.updateRefundRejectStatus1(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int updateRefundRejectStatus2(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = mapper.updateRefundRejectStatus2(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

}
