package com.itsme.letitgo.company.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.payment.model.dto.ProductDTO;
import com.itsme.letitgo.company.payment.model.mapper.ProductMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class SelectProductListService {
	
	public List<ProductDTO> SelectProductList() {
		
		SqlSession session = getSqlSession();
		
		ProductMapper productMapper = session.getMapper(ProductMapper.class);
		
		List<ProductDTO> productList = productMapper.selectProductList();
		
		session.close();
		
		return productList;
	}

}
