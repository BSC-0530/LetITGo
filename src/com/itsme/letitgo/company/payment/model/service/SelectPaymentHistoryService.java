package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class SelectPaymentHistoryService {

	public List<PaymentHistoryDTO> SelectPaymentHistory() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentHistoryMapper = session.getMapper(PaymentMapper.class);
		
		List<PaymentHistoryDTO> paymentHistoryList = paymentHistoryMapper.selectPaymentHistory();
		
		session.close();
		
		
		return paymentHistoryList;
	}

	public int SelectResumeBrowsingNum() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentResumeBrowsingNum = session.getMapper(PaymentMapper.class);
		
		int resumeBrowsingNum = paymentResumeBrowsingNum.SelectResumeBrowsingNum();
		
		session.close();
		
		return resumeBrowsingNum;
		
	}

}
