package com.itsme.letitgo.admin.info.model.service;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import com.itsme.letitgo.admin.info.model.dto.CompanyJoinDTO;
import com.itsme.letitgo.admin.info.model.mapper.JoinMapper;

public class CompanyDetailService {

	//가입 요청 상세보기
	public CompanyJoinDTO joinDetail(int coReqNo) {
	
		SqlSession session = getSqlSession();
		
		JoinMapper mapper = session.getMapper(JoinMapper.class);
		
		CompanyJoinDTO joinDetail = mapper.memberInfo(coReqNo);
		
		session.close();
		
		return joinDetail;
	}





	


}
