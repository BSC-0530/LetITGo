package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.mapper.TestCheckPwdMapper;

public class TestCheckPwdService {

	public MemberLoginDTO selectPwdList(String memNo) {

		SqlSession session = getSqlSession();
		
		TestCheckPwdMapper mapper = session.getMapper(TestCheckPwdMapper.class);
		
		MemberLoginDTO testCheckPwd = mapper.selectPwdList(memNo);
		System.out.println("pwdList : " + testCheckPwd);
		
		session.close();
		
		//값확인
		System.out.println("서비스쪽 : " + testCheckPwd);
		
		return null;
	}

}
