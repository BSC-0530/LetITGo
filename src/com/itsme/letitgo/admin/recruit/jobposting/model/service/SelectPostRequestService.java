package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;
import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class SelectPostRequestService {

	/* 공고등록요청 리스트 조회 */
	public List<PostInsertRuqeustDTO> selectPostRequest() {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		List<PostInsertRuqeustDTO> postInsertRuqeustList = mapper.selectPostRequest();
		
		session.close();
				
		return postInsertRuqeustList;
	}

	/* 공고수정요청 리스트 조회 */
	public List<PostInsertRuqeustDTO> selectPostInsertUpdate() {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		List<PostInsertRuqeustDTO> postInsertUpdateList = mapper.selectPostInsertUpdate();
		
		session.close();
				
		return postInsertUpdateList;
	}

}
