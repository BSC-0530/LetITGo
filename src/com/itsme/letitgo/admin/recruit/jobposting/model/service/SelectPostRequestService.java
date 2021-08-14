package com.itsme.letitgo.admin.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;
import com.itsme.letitgo.admin.recruit.jobposting.model.mapper.AdminJobPostMapper;

public class SelectPostRequestService {

	public List<PostInsertRuqeustDTO> selectPostRequest() {
		
		SqlSession session = getSqlSession();
		
		AdminJobPostMapper mapper = session.getMapper(AdminJobPostMapper.class);
		
		List<PostInsertRuqeustDTO> postInsertRuqeustList = mapper.selectPostRequest();
		
		session.close();
				
		return postInsertRuqeustList;
	}

}
