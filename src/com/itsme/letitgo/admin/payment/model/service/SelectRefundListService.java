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

}
