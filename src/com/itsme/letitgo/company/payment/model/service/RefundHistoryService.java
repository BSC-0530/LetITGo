package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class RefundHistoryService {

	public List<RefundHistoryDTO> SelectRefundHistoryList() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper refundHistoryMapper = session.getMapper(PaymentMapper.class);
		
		List<RefundHistoryDTO> refundHistoryList = refundHistoryMapper.selectRefundHistory();
		
		session.close();
				
		return refundHistoryList;
	}

}
