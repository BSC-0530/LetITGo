package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.dto.AdminRefundHistoryDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class SelectRefundListService {

	/* 모든 환불내역조회 */
	public List<AdminRefundHistoryDTO> selectRefundList() {
	
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		List<AdminRefundHistoryDTO> refundHistoryList = mapper.selectAdminRefundHistory();
		
		session.close();
				
		return refundHistoryList;
		
	}

	/* 결제변경번호를 통해서 환불거절사유를 가져옴. */
	public String selectRejectReasonMessage(int payChangeNo) {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		String rejectReasonMessage = mapper.selectRejectReasonMessage(payChangeNo);
		
		session.close();
				
		return rejectReasonMessage;
	}

}
