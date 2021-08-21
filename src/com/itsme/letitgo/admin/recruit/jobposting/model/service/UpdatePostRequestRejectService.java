package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class UpdatePostRequestRejectService {

	/* 채용공고의 분류를 거절된 공고로 변경 */
	public int updatePostRejectRequest1(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostRejectRequest1(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/* 채용공고 승인여부이력 응답구분을 거절로 변경 */
	public int updatePostRejectRequest2(Map<String, Object> map) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostRejectRequest2(map);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
