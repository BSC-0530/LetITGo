package com.itsme.letitgo.personal.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.dto.MemberDTO;
import com.itsme.letitgo.personal.info.model.mapper.PersonalMemberMapper;
import com.itsme.letitgo.personal.info.model.mapper.personalMemberMapper;

public class PersonalMemberService {

	public MemberDTO selectMemberInfo() {
		
		SqlSession session = getSqlSession();
		
		MemberDTO memberInfo = new MemberDTO();
		
		PersonalMemberMapper memberMapper = session.getMapper(PersonalMemberMapper.class);
		
		memberInfo = memberMapper.selectMemberInfo();
		
		session.close();
		
		return memberInfo;
	}

}
