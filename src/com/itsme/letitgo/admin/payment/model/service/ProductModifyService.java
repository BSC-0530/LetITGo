package com.itsme.letitgo.admin.payment.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.payment.model.dto.ProductListDTO;
import com.itsme.letitgo.admin.payment.model.mapper.AdminPaymentMapper;

public class ProductModifyService {

	public int productModify(ProductListDTO productListDTO) {
		/*session을 생성한다.*/
		SqlSession session = getSqlSession();
		/*mapper를 생성한다.*/
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		/*result 변수를 선언하고 adminPaymentMapper에 productMoidfy메소드를 생성한다. 그리고 productListDTO를 가지고 간다.*/
		int result = adminPaymentMapper.productModify(productListDTO);
		
		if(result > 0) {
			/*reuslt가 성공인경우 커밋*/
			session.commit(); 	
		}else {
			/*result가 실패인 경우*/
			session.rollback();			
		}
		/*session을 닫는다.*/
		session.close();
		/*result로 리턴해준다.*/
		return result;
	}

	public int productDelete(int productNo) {
		/*session을 생성한다.*/
		SqlSession session = getSqlSession();
		/*mapper를 생성한다.*/
		AdminPaymentMapper adminPaymentMapper = session.getMapper(AdminPaymentMapper.class);
		
		/*result 변수를 선언하고 adminPaymentMapper에 productDelete메소드를 생성한다. 그리고 productListDTO를 가지고 간다.*/
		int result = adminPaymentMapper.productDelete(productNo);			
		
		if(result > 0) {
			/*reuslt가 성공인경우 커밋*/
			session.commit(); 	
		}else {
			/*result가 실패인 경우*/
			session.rollback();			
		}
		/*session을 닫는다*/
		session.close();
		/*result로 리턴해준다.*/
		return result;
	}



}
