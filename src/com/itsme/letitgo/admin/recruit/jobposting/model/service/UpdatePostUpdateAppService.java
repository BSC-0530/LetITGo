package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class UpdatePostUpdateAppService {

	public int updatePostUpdateApp1(int jobPostNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostUpdateApp1(jobPostNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int updatePostUpdateApp2(int jobPostReqNo) {

		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostUpdateApp2(jobPostReqNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
