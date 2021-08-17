package com.itsme.letitgo.personal.info.model.service;

import java.util.List;

import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
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

	public int modifyPersonalInfo(ModifyMemberDTO mdMemberDTO) {

		SqlSession session = getSqlSession();					//session 생성
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);		//mapper 생성
		
		int result = mapper.modifyPersonalInfo(mdMemberDTO);			//int 변수 선언 후 mapper에다가 값넘김
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}

}
