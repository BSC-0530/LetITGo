package com.itsme.letitgo.admin.payment.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.payment.model.dto.AdminPaymentHistoryDTO;
import com.itsme.letitgo.admin.payment.model.dto.AdminRefundHistoryDTO;

public interface AdminPaymentMapper {

	List<AdminPaymentHistoryDTO> selectAdminPaymentHistory();

	List<AdminRefundHistoryDTO> selectAdminRefundHistory();

	int updateRefundAppStatus(int payChangeNo);

	int updateRefundAppStatus2(int payNo);

	int updateRefundRejectStatus(int payChangeNo);

	int updateRefundRejectStatus2(int payNo);
}
