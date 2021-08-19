package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class ProductModifyService {

	public int productModify(ProductListDTO productListDTO) {

		SqlSession session = getSqlSession();
		
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = adminPaymentMapper.productModify(productListDTO);
		
		if(result > 0) {
			session.commit(); 	//세션이 1이상인경우 커밋
		}else {
			session.rollback();			//세션이 0인경우 롤백
		}
		
		session.close();
		
		return result;
	}

	public int productDelete(int productNo) {

		SqlSession session = getSqlSession();
		
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		int result = adminPaymentMapper.productDelete(productNo);			//productNo로 반환해준다?
		
		if(result > 0) {
			session.commit(); 	//세션이 1이상인경우 커밋
		}else {
			session.rollback();			//세션이 0인경우 롤백
		}
		
		session.close();
		
		return result;
	}

	public int productGo() {
		// TODO Auto-generated method stub
		return 0;
	}

}
