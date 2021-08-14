package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class UpdatePostRequestAppService {

	public int updatePostRequestApp1(int jobPostNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostRequestApp1(jobPostNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
		
	}

	public int updatePostRequestApp2(int jobPostReqNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result2 = mapper.updatePostRequestApp2(jobPostReqNo);
		
		if(result2 > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result2;
		
	}

}
