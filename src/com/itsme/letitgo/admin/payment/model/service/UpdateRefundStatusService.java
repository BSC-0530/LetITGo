package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class UpdateRefundStatusService {

	/* 결제상태변경이력 환불완료로 변경  */
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

	/* 결제내역 환불완료로 변경 */
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
	
	/* 결제변경이력에 거절사유를 입력하고 상태를 환불거절로 변경 */
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
	
	/* 결제의 상태를 환불거절로 변경 */
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

	/* 보유상품의 상태를 환불로 변경 */
	public int updateHoldingProductStatus(int payNo) {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = mapper.updateHoldingProductStatus(payNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
