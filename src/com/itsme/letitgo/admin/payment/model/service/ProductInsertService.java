package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class ProductInsertService {

	public int productInsert(ProductListDTO productListDTO) {

		SqlSession session = getSqlSession();
		
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = adminPaymentMapper.productInsert(productListDTO);
		
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
		
	}

}
