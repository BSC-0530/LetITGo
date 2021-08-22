package com.itsme.letitgo.admin.info.model.service;

import com.itsme.letitgo.admin.info.model.mapper.BoxCountMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

public class CountMainService {

	public int selectRegistRequestNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectRegistRequestNum();
		
		session.close();
		
		return result;
	}

	public int selectPostNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectPostNum();
		
		session.close();
		
		return result;
	}

	public int selectNoticeNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectNoticeNum();
		
		session.close();
		
		return result;
	}

	public int selectInfoChangeNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectInfoChangeNum();
		
		session.close();
		
		return result;
	}

	public int selectPostChangeNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectPostChangeNum();
		
		session.close();
		
		return result;
	}

	public int selectInquiryNum() {
		
		SqlSession session = getSqlSession();
		
		BoxCountMapper mapper = session.getMapper(BoxCountMapper.class);
		
		int result = mapper.selectInquiryNum();
		
		session.close();
		
		return result;
	}

}
