package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.mapper.CheckPwdMapper;

public class CheckPwdService {

	public MemberLoginDTO selectPwdList(int memNo) {

		SqlSession session = getSqlSession();
		
		CheckPwdMapper mapper = session.getMapper(CheckPwdMapper.class);
		
		MemberLoginDTO CheckPwd = mapper.selectPwdList(memNo);
		System.out.println("pwdList : " + CheckPwd);
		
		session.close();
		
		//값확인
		System.out.println("서비스쪽 : " + CheckPwd);
		
		return null;
	
	}

	public int memEntYnStatus(int memNo) {

		SqlSession session = getSqlSession();
		
		CheckPwdMapper mapper = session.getMapper(CheckPwdMapper.class);
		
		int result = mapper.memEntYnStatus(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
}














