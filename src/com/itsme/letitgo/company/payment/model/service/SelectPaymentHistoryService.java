package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
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
		
		int resumeBrowsingNum = paymentResumeBrowsingNum.selectResumeBrowsingNum();
		
		session.close();
		
		return resumeBrowsingNum;
		
	}

	public int SelectExposureUsingPostNum() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureUsingPostNum = session.getMapper(PaymentMapper.class);
		
		int exposureUsingPostNum = paymentExposureUsingPostNum.selectExposureUsingPostNum();
		
		session.close();
		
		return exposureUsingPostNum;
	}

	public long SelectExposureRestTime() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureRestTime = session.getMapper(PaymentMapper.class);
		
		long exposureUsingPostNum = paymentExposureRestTime.selectExposureRestTime();
		
		session.close();
		
		return exposureUsingPostNum;
	
	}

	public List<BrowseUsingHistoryDTO> SelectBrowseUsingHistroy() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentBrowseUsingHistroy = session.getMapper(PaymentMapper.class);
		
		List<BrowseUsingHistoryDTO> paymentBrowseUsingHistroyList = paymentBrowseUsingHistroy.selectBrowseUsingHistroyList();
		
		session.close();
		
		return paymentBrowseUsingHistroyList;
	}

	public List<HoldingRequestingSkillsDTO> SelectHoldingSkills() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentHoldingRequestingSkills = session.getMapper(PaymentMapper.class);
		
		List<HoldingRequestingSkillsDTO> paymentHoldingRequestingSkillsList = paymentHoldingRequestingSkills.selectHoldingSkillsList();
		
		session.close();
		
		return paymentHoldingRequestingSkillsList;
		
	}

	public List<ExposureUsingHistoryDTO> SelectExposureUsingHistory() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureUsingHistory = session.getMapper(PaymentMapper.class);
		
		List<ExposureUsingHistoryDTO> paymentExposureUsingHistoryList = paymentExposureUsingHistory.selectExposureUsingHistoryList();
		
		session.close();
		
		return paymentExposureUsingHistoryList;

	}

	public List<HoldingRequestingSkillsDTO> SelectRequestingSkills() {
	
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentRequestingSkills = session.getMapper(PaymentMapper.class);
		
		List<HoldingRequestingSkillsDTO> paymentRequestingSkillsList = paymentRequestingSkills.selectRequestingSkillsList();
		
		session.close();
		
		return paymentRequestingSkillsList;
		
	
	}

}
