package com.itsme.letitgo.admin.info.model.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import com.itsme.letitgo.admin.info.model.dto.CompanyJoinDTO;
import com.itsme.letitgo.admin.info.model.mapper.JoinMapper;

public class CompanyDetailService {


	public static int detailInfo1(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int result = mapper.detailInfo1(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public static int detailInfo2(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		int result = mapper.detailInfo2(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}



	

}
