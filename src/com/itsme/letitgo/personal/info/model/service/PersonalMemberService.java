package com.itsme.letitgo.personal.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.dto.InfoMemberDTO;
import com.itsme.letitgo.personal.info.model.mapper.PersonalMemberMapper;

public class PersonalMemberService {

	public InfoMemberDTO selectMemberInfo() {
		
		SqlSession session = getSqlSession();
		
		InfoMemberDTO memberInfo = new InfoMemberDTO();
		
		PersonalMemberMapper memberMapper = session.getMapper(PersonalMemberMapper.class);
		
		memberInfo = memberMapper.selectMemberInfo();
		
		session.close();
		
		return memberInfo;
	}

}
