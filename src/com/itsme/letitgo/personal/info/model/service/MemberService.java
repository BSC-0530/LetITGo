package com.itsme.letitgo.personal.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.dto.MemberDTO;
import com.itsme.letitgo.personal.info.model.mapper.MemberMapper;

public class MemberService {

	public MemberDTO selectMemberInfo() {
		
		SqlSession session = getSqlSession();
		
		MemberDTO memberInfo = new MemberDTO();
		
		MemberMapper memberMapper = session.getMapper(MemberMapper.class);
		
		memberInfo = memberMapper.selectMemberInfo();
		
		
		return memberInfo;
	}

}
