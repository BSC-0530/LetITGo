package com.itsme.letitgo.company.payment.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.payment.model.dto.BrowseUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ExposureUsingHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.HoldingRequestingSkillsDTO;
import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ProductDTO;

public interface PaymentMapper {

	List<ProductDTO> selectProductList();

	List<PaymentHistoryDTO> selectPaymentHistory();

	int selectResumeBrowsingNum();

	int selectExposureUsingPostNum();

	long selectExposureRestTime();

	List<BrowseUsingHistoryDTO> selectBrowseUsingHistroyList();

	List<HoldingRequestingSkillsDTO> selectHoldingSkillsList();

	List<ExposureUsingHistoryDTO> selectExposureUsingHistoryList();

	List<HoldingRequestingSkillsDTO> selectRequestingSkillsList();

	PaymentHistoryDTO selectRefundRequestProduct(int payNo);

	int insertRefundMessage(Map<String, Object> map);



}
