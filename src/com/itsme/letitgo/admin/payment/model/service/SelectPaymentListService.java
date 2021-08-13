package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.dto.AdminPaymentHistoryDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class SelectPaymentListService {

	public List<AdminPaymentHistoryDTO> selectPaymentList() {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper mapper = session.getMapper(AdminPaymentMapper.class);
		
		List<AdminPaymentHistoryDTO> paymentHistoryList = mapper.selectAdminPaymentHistory();
		
		session.close();
				
		return paymentHistoryList;
		
		
	}

}
