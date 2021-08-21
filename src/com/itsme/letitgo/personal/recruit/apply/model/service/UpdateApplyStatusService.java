package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;


public class UpdateApplyStatusService {

	/* 채용공고별지원내역의 지원상태를 지원취소로 변경 */
	public int updateApplyStatus(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
			
		int result = mapper.updateApplyStatus(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	/* 지원내역상태변경이력을 추가 */
	public int insertApplyStatus(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		int result = mapper.insertApplyStatus(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
