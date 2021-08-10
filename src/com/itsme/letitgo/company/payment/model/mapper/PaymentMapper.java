package com.itsme.letitgo.company.payment.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.payment.model.dto.PaymentHistoryDTO;
import com.itsme.letitgo.company.payment.model.dto.ProductDTO;

public interface PaymentMapper {

	List<ProductDTO> selectProductList();

	List<PaymentHistoryDTO> selectPaymentHistory();

	int SelectResumeBrowsingNum();

}
