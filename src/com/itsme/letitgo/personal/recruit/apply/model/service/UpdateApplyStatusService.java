package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class UpdateApplyStatusService {

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
