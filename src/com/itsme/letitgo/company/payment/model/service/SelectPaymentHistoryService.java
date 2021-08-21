package com.itsme.letitgo.company.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureLeftTimeDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ReadingLeftNumDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

public class SelectPaymentHistoryService {

	 /* 결제내역 조회 */
	public List<PaymentHistoryDTO> selectPaymentHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentHistoryMapper = session.getMapper(PaymentMapper.class);
		
		List<PaymentHistoryDTO> paymentHistoryList = paymentHistoryMapper.selectPaymentHistory(memNo);
		
		session.close();
		
		
		return paymentHistoryList;
	}

	/* 보유중인 이력서열람권 조회 */
	public List<ReadingLeftNumDTO> selectResumeBrowsingNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentResumeBrowsingNum = session.getMapper(PaymentMapper.class);
		
		List<ReadingLeftNumDTO> resumeBrowsingNum = paymentResumeBrowsingNum.selectResumeBrowsingNum(memNo);
		
		session.close();
		
		return resumeBrowsingNum;
		
	}

	/* 노출권 사용중인 공고 조회 */
	public int selectExposureUsingPostNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureUsingPostNum = session.getMapper(PaymentMapper.class);
		
		int exposureUsingPostNum = paymentExposureUsingPostNum.selectExposureUsingPostNum(memNo);
		
		session.close();
		
		return exposureUsingPostNum;
	}
	
	/* 노출권 잔여시간 조회 */
	public List<ExposureLeftTimeDTO> selectExposureRestTime(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureRestTime = session.getMapper(PaymentMapper.class);
		
		List<ExposureLeftTimeDTO> exposureUsingPostNum = paymentExposureRestTime.selectExposureRestTime(memNo);
		
		session.close();
		
		return exposureUsingPostNum;
	
	}

	/* 열람권 사용내역 조회 */
	public List<BrowseUsingHistoryDTO> selectBrowseUsingHistroy(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentBrowseUsingHistroy = session.getMapper(PaymentMapper.class);
		
		List<BrowseUsingHistoryDTO> paymentBrowseUsingHistroyList = paymentBrowseUsingHistroy.selectBrowseUsingHistroyList(memNo);
		
		session.close();
		
		return paymentBrowseUsingHistroyList;
	}

	/* 이력서 내 모든 보유기술 조회*/
	public List<HoldingRequestingSkillsDTO> selectHoldingSkills() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentHoldingRequestingSkills = session.getMapper(PaymentMapper.class);
		
		List<HoldingRequestingSkillsDTO> paymentHoldingRequestingSkillsList = paymentHoldingRequestingSkills.selectHoldingSkillsList();
		
		session.close();
		
		return paymentHoldingRequestingSkillsList;
		
	}

	/* 노출권 사용이력 */
	public List<ExposureUsingHistoryDTO> selectExposureUsingHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentExposureUsingHistory = session.getMapper(PaymentMapper.class);
		
		List<ExposureUsingHistoryDTO> paymentExposureUsingHistoryList = paymentExposureUsingHistory.selectExposureUsingHistoryList(memNo);
		
		session.close();
		
		return paymentExposureUsingHistoryList;

	}

	/* 노촐권 사용중인 공고의 요구기술 */
	public List<HoldingRequestingSkillsDTO> selectRequestingSkills() {
	
		SqlSession session = getSqlSession();
		
		PaymentMapper paymentRequestingSkills = session.getMapper(PaymentMapper.class);
		
		List<HoldingRequestingSkillsDTO> paymentRequestingSkillsList = paymentRequestingSkills.selectRequestingSkillsList();
		
		session.close();
		
		return paymentRequestingSkillsList;
		
	
	}
	

}
