package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistroyDTO;
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

	public int SelectExposureUsingPostNum() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureUsingPostNum = session.getMapper(PaymentMapper.class);
		
		int exposureUsingPostNum = paymentExposureUsingPostNum.SelectExposureUsingPostNum();
		
		session.close();
		
		return exposureUsingPostNum;
	}

	public long SelectExposureRestTime() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureRestTime = session.getMapper(PaymentMapper.class);
		
		long exposureUsingPostNum = paymentExposureRestTime.SelectExposureRestTime();
		
		session.close();
		
		return exposureUsingPostNum;
	
	}

	public List<BrowseUsingHistroyDTO> SelectBrowseUsingHistroy() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentBrowseUsingHistroy = session.getMapper(PaymentMapper.class);
		
		List<BrowseUsingHistroyDTO> paymentBrowseUsingHistroyList = paymentBrowseUsingHistroy.BrowseUsingHistroyList();
		
		session.close();
		
		return paymentBrowseUsingHistroyList;
	}

}
