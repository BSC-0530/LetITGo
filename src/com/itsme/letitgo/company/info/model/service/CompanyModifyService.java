package com.itsme.letitgo.company.info.model.service;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.itsme.letitgo.company.info.model.dto.ModifyChageDTO;
import com.itsme.letitgo.company.info.model.mapper.ModifyPassworMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;
public class CompanyModifyService {

	
	BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	public int PwdCheck(ModifyChageDTO modifyChangeDTO) {
	
		SqlSession session = getSqlSession();
		
		ModifyPassworMapper mapper = session.getMapper(ModifyPassworMapper.class);
		

		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder(); 
		
//		int result = mapper.ModifyPassword(modifyChangeDTO);
		
		return 0;

	}
	
	
}
