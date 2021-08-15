package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class InsertApplyingHistoryService {

	public int requestApplyServlet(Map<String, Object> applyMap) {

		SqlSession session = getSqlSession();

		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);

		int result1 = mapper.insertApplyngHistory(applyMap);


		int result2 = mapper.insertApplyingChangeHistory(applyMap);
		
		int result = result1 + result2;
		
		if(result1 + result2 >= 2) {
			
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();


		return result;
	}

}
