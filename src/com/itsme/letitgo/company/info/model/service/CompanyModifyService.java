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
		
		ModifyPassworMapper mapper = session.getMapper(ModifyPassworMapper.class);
		
		int result = mapper.resetPassword(companyInfoDTO);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}
	
	
}
