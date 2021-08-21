package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;

public class ForgetService {

	/* 이메일을 통해서 아이디를 조회 */
	public String selectFogetId(String memEmail) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		String memId = memberMapper.selectFogetId(memEmail);

		session.close();
		
		return memId;	
		
	}

	/* 아이디와 이메일을 통해 존재하는 회원이 있는지 확인  */
	public int checkIdEmail(Map<String, String> map) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int checkIdEmail = memberMapper.checkIdEmail(map);

		session.close();
		
		return checkIdEmail;
	}

	 /* 아이디에 암호회된 비밀번호를 넣어줌 */
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
