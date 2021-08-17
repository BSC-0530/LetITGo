package com.itsme.letitgo.admin.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class ProductListService {

	public List<ProductListDTO> productList() {
		
		SqlSession session = getSqlSession();
		
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		List<ProductListDTO> productList = adminPaymentMapper.productList();
		//List 할 때 이렇게 쓴다. 기억하자
		
		session.close();
		
		return productList;
	}

}
