package com.itsme.letitgo.admin.payment.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.admin.payment.model.dto.AdminPaymentHistoryDTO;
import com.itsme.letitgo.admin.payment.model.dto.AdminRefundHistoryDTO;
import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;

public interface AdminPaymentMapper {

	List<AdminPaymentHistoryDTO> selectAdminPaymentHistory();

	List<AdminRefundHistoryDTO> selectAdminRefundHistory();

	int updateRefundAppStatus(int payChangeNo);

	int updateRefundAppStatus2(int payNo);

	
	int updateRefundRejectStatus1(Map<String, Object> map);

	int updateRefundRejectStatus2(Map<String, Object> map);

	int productInsert(ProductListDTO productListDTO);

	List<ProductListDTO> productList();

	int productModify(ProductListDTO productListDTO);

	int productDelete(int productNo);
}
