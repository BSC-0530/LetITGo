package com.itsme.letitgo.company.info.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.mapper.ModifyPassworMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;
public class CompanyModifyService {

	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	public int resetPassword(CompanyInfoDTO companyInfoDTO) {
		
		SqlSession session = getSqlSession();	
		
		/*AdminPaymentMapper에 session을 넣는다*/
		ModifyPassworMapper mapper = session.getMapper(ModifyPassworMapper.class);
		
		/*mapper에 productList(companyInfoDTO)를 담고 메소드 생성*/
		int result = mapper.resetPassword(companyInfoDTO);
		
		if(result > 0) {
			/*result가 1이상이면 커밋을 한다. 즉!! result가 성공하면 커밋을 한다.*/
			session.commit();
		}else {
			/*result가 실패를 하면 롤백을 한다.*/
			session.rollback();
		}
		/*session을 닫는다(안 닫으면 DB에서 문제가 발생한다.)*/
		session.close();
		
		return result;
	}
	
	
}
