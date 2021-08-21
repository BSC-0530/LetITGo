package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class UpdatePostRequestAppService {

	/* 채용공고의 분류를 승인된 공고로 변경 */
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
	
	/* 채용공고 승인여부이력 응답구분을 승인으로 변경 */
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
