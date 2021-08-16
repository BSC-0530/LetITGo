package com.itsme.letitgo.company.regist.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.regist.model.mapper.RegistCoMemberMapper;

public class duplicateIdCheckService {

	public int duplicateIdCheck(String memId) {
		
		SqlSession session = getSqlSession();

		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);

		int result = mapper. duplicateIdCheck(memId);

		session.close();
	
		return result;
	}

}
