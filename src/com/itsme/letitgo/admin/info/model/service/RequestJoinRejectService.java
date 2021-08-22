package com.itsme.letitgo.admin.info.model.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;
import com.itsme.letitgo.admin.info.model.mapper.JoinMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class RequestJoinRejectService {

	public int joinRejectRequest1(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int result = mapper.RequestJoinReject1(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	

}
