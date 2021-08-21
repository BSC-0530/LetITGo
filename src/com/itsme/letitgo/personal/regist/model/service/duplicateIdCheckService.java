package com.itsme.letitgo.personal.regist.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.regist.model.mapper.RegistInMemberMapper;

public class duplicateIdCheckService {

	/* 중복된 아이디가 있는지 확인 */
	public int duplicateIdCheck(String memId) {
		
		SqlSession session = getSqlSession();

		RegistInMemberMapper mapper = session.getMapper(RegistInMemberMapper.class);

		int result = mapper. duplicateIdCheck(memId);

		session.close();
	
		return result;
	}

}
