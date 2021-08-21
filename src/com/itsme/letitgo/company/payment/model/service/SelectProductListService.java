package com.itsme.letitgo.company.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.mapper.PaymentMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class SelectProductListService {
	
	/* 상품목록 조회 */
	public List<ProductDTO> SelectProductList() {
		
		SqlSession session = getSqlSession();
		
		PaymentMapper productMapper = session.getMapper(PaymentMapper.class);
		
		List<ProductDTO> productList = productMapper.selectProductList();
		
		session.close();
		
		return productList;
	}

}
