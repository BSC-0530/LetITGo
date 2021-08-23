package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class SelectPostRejectReasonMessageService {

	/* 승인요청번호로 거절사유 조회 */
	public String SelectPostRejectReasonMessage(int jobPostReqNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		String result = mapper.selectPostRejectReasonMessage(jobPostReqNo);
		
		session.close();
		
		return result;
		
	}

}
