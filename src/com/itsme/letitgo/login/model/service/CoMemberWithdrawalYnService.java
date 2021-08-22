package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.model.mapper.CoMemberWithdrawalYnMapper;

public class CoMemberWithdrawalYnService {

	public int coMemberWithdrawalYn(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CoMemberWithdrawalYnMapper mapper = session.getMapper(CoMemberWithdrawalYnMapper.class);
		
		int result = mapper.coMemberWithdrawalYn(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
