package com.itsme.letitgo.personal.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.mapper.PersonalInfoMapper;

public class SelectBrowsingNumService {

	public int selectShallowBrowsingNum() {
			
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectshallowBrowsingNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectDeepBrowsingNum() {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectDeepBrowsingNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int selectInterviewProposalNum() {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectinterviewProposalNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectApplicationCompletedNum() {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectApplicationCompletedNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectApplicationCanceledNum() {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectApplicationCanceledNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectBookmarkNum() {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectBookmarkNum();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
}
