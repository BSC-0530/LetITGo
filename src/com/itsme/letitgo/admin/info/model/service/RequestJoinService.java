package com.itsme.letitgo.admin.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.mapper.JoinMapper;

public class RequestJoinService {

	public int JoinRequest1(int coReqNo) {

		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int result = mapper.RequestJoin(coReqNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int JoinRequest2(int coMemNo) {
		
		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int result2 = mapper.RequestJoin2(coMemNo);
		
		
		if(result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result2;
	}

	

}
