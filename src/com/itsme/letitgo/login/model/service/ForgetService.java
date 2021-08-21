package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;

public class ForgetService {

	public String selectFogetId(String memEmail) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		String memId = memberMapper.selectFogetId(memEmail);

		session.close();
		
		return memId;	
		
	}

	public int checkIdEmail(Map<String, String> map) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int checkIdEmail = memberMapper.checkIdEmail(map);

		session.close();
		
		return checkIdEmail;
	}

	public int updateMemPwd(Map<String, String> updateMap) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int updateMemPwd = memberMapper.updateMemPwd(updateMap);

		if(updateMemPwd > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return updateMemPwd;
	}

}
