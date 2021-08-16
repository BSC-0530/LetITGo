package com.itsme.letitgo.personal.info.model.service;

import java.util.List;

import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.mapper.PersonalInfoMapper;

public class PersonalInfoService {

	public List<RestrictedCompanyDTO> selectRectrictedCompany(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		List<RestrictedCompanyDTO> restrictedCompanyList = mapper.selectRectrictedCompany(memNo);
		
		session.close();
		
				
		return restrictedCompanyList;
	}

}
