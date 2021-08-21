package com.itsme.letitgo.personal.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.mapper.PersonalInfoMapper;

public class SelectBrowsingNumService {

	/* 스카우트 얕은열람 당한 횟수 조회 */
	public int selectShallowBrowsingNum(int memNo) {
			
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectshallowBrowsingNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 스카우트 깊은열람 당한 횟수 조회 */
	public int selectDeepBrowsingNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectDeepBrowsingNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	/* 스카우트 면접제안 당한 횟수 조회 */
	public int selectInterviewProposalNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectinterviewProposalNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/* 지원완료한 횐수 */
	public int selectApplicationCompletedNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectApplicationCompletedNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	/* 지원취소한 횟수 */
	public int selectApplicationCanceledNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectApplicationCanceledNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/* 북마크한 횟수 */
	public int selectBookmarkNum(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		int result = mapper.selectBookmarkNum(memNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
}
