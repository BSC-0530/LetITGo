package com.itsme.letitgo.login.model.service;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.mapper.MemberWithdrawalYnMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class MemberWithdrawalYnService {

	public int memberWithdrawalYn(int memNo) {

		SqlSession session = getSqlSession();
		
		MemberWithdrawalYnMapper mapper = session.getMapper(MemberWithdrawalYnMapper.class);
		
		int result = mapper.memberWithdrawalYn(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	
	
}
