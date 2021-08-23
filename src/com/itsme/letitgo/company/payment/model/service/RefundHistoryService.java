package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class RefundHistoryService {

	/* 환불내역 가져오기 */
	public List<RefundHistoryDTO> selectRefundHistoryList(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundHistoryMapper = session.getMapper(PaymentMapper.class);
		
		List<RefundHistoryDTO> refundHistoryList = refundHistoryMapper.selectRefundHistory(memNo);
		
		session.close();
				
		return refundHistoryList;
	}

	/* 결제상태변경이력을 환불요쳥취소로 변경 */
	public int updateRefundRequest(int payChangeNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundRequestMapper = session.getMapper(PaymentMapper.class);
		
		int result = refundRequestMapper.updateRefundRequest(payChangeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		

	}

	/* 결제내역을 결제완료로 변경 */
	public int updateRefundRequest2(int payChangeNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundRequestMapper2 = session.getMapper(PaymentMapper.class);
		
		/* 결제내역을 변경하기위해 결제변경내역번호를 통해서 결제번호를 조회함 */
		int payNo = refundRequestMapper2.selectPayNo(payChangeNo);
		
		/* 결제내역을 결제완료로 변경 */
		int result2 = refundRequestMapper2.updateRefundRequest2(payNo);
		
		if(result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result2;
	}

	/* 결제변경번호를 통해서 변경사유를 가져옴. */
	public String selectRefundMessage(int payChangeNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper mapper = session.getMapper(PaymentMapper.class);
		
		String result = mapper.selectRefundMessage(payChangeNo);

		session.close();
		
		return result;

	}


}
