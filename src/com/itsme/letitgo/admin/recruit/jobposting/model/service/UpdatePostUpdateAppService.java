package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class UpdatePostUpdateAppService {

	/* 요청번호를 통해서 수정전 채용공고번호를 가져옴 */
	public int selectChangeReqJobPostNo(int jobPostReqNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.selectChangeReqJobPostNo(jobPostReqNo);
		
		session.close();
		
		return result;
	}
	
	/* 채용공고의 분류를 승인된 공고로 변경 */
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

	/* 채용공고 승인여부이력의 응답구분을 승인으로 변경 */
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
	
	/* 수정완료전공고의 분류를 수정완료전공고 로 변경 */
	public int updatePostUpdateApp3(int changeReqJobPostNo) {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		int result = mapper.updatePostUpdateApp3(changeReqJobPostNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
