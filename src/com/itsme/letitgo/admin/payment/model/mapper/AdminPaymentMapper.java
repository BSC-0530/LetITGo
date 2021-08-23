package com.itsme.letitgo.admin.payment.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.admin.payment.model.dto.AdminPaymentHistoryDTO;
import com.itsme.letitgo.admin.payment.model.dto.AdminRefundHistoryDTO;
import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;

public interface AdminPaymentMapper {

	/* 모든 결제내역조회 */
	List<AdminPaymentHistoryDTO> selectAdminPaymentHistory();

	/* 모든 환불내역조회 */
	List<AdminRefundHistoryDTO> selectAdminRefundHistory();

	/* 결제상태변경이력 환불완료로 변경  */
	int updateRefundAppStatus(int payChangeNo);

	/* 결제내역 환불완료로 변경 */
	int updateRefundAppStatus2(int payNo);

	/* 결제변경이력에 거절사유를 입력하고 상태를 환불거절로 변경 */
	int updateRefundRejectStatus1(Map<String, Object> map);

	/* 결제의 상태를 환불거절로 변경 */
	int updateRefundRejectStatus2(Map<String, Object> map);

	/* 보유상품의 상태를 환불로 변경 */
	int updateHoldingProductStatus(int payNo);
	
	/* 결제변경번호를 통해서 환불거절사유를 가져옴. */
	String selectRejectReasonMessage(int payChangeNo);
	
	int productInsert(ProductListDTO productListDTO);

	List<ProductListDTO> productList();

	int productModify(ProductListDTO productListDTO);

	int productDelete(int productNo);


}
