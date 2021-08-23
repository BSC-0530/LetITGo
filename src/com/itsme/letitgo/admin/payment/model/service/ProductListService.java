package com.itsme.letitgo.admin.payment.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class ProductListService {

	public List<ProductListDTO> productList() {
		
		SqlSession session = getSqlSession();
		
		/*AdminPaymentMapper에 session을 넣는다*/
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		/*mapper에 productList 메소드 생성*/
		List<ProductListDTO> productList = adminPaymentMapper.productList();
		
		/*session을 닫는다(안 닫으면 DB에서 문제가 발생한다.)*/
		session.close();
		
		return productList;
	}

}
