package com.itsme.letitgo.company.payment.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundChangeStatusDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.RefundRequestProductDTO;

public interface PaymentMapper {

	List<ProductDTO> selectProductList(/* 기업회원번호 */);

	List<PaymentHistoryDTO> selectPaymentHistory(/* 기업회원번호 */);

	int selectResumeBrowsingNum(/* 기업회원번호 */);

	int selectExposureUsingPostNum(/* 기업회원번호 */);

	long selectExposureRestTime(/* 기업회원번호 */);

	List<BrowseUsingHistoryDTO> selectBrowseUsingHistroyList(/* 기업회원번호 */);

	List<HoldingRequestingSkillsDTO> selectHoldingSkillsList(/* 기업회원번호 */);

	List<ExposureUsingHistoryDTO> selectExposureUsingHistoryList(/* 기업회원번호 */);

	List<HoldingRequestingSkillsDTO> selectRequestingSkillsList(/* 기업회원번호 */);

	RefundRequestProductDTO selectRefundRequestProduct(int payNo /* 기업회원번호 */);

	int insertRefundMessage(Map<String, Object> map /* 기업회원번호 */);

	List<RefundHistoryDTO> selectRefundHistory(/* 기업회원번호 */);

	int updateRefundRequest(int payChangeNo /* 기업회원번호 */);

	int selectPayNo(int payChangeNo);
	
	int updateRefundRequest2(int payNo  /* 기업회원번호 */);
	
	List<RefundChangeStatusDTO> selectRefundChangeStatus(/* 기업회원번호 */);

	int updatePaymentStatus(Map<String, Object> map);



	



}
