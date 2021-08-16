package com.itsme.letitgo.admin.board.notice.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.mapper.PersonalInfoPolicyMapper;

public class PersonalInfoPolicyService {

	public int personalInfoPolicyInsert(PersonalInfoPolicyDTO requestPersonalInfoPolicy) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper personalInfoPolicyMapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		int result = personalInfoPolicyMapper.personalInfoPolicyInsert(requestPersonalInfoPolicy);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public List<PersonalInfoPolicyDTO> selectAllPersonalInfoPolicyList() {

		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper personalInfoPolicyMapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		List<PersonalInfoPolicyDTO> personalInfoPolicyList = personalInfoPolicyMapper.selectAllPersonalInfoPolicyList();
		
		session.close();
		
		return personalInfoPolicyList;
	}

}










