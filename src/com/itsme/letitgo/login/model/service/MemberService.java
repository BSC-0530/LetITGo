package com.itsme.letitgo.login.model.service;

import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.mapper.MemberMapper;
import com.sun.org.apache.bcel.internal.generic.RETURN;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import javax.mail.Session;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class MemberService {

	
	public MemberDTO loginCheck(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		MemberDTO loginMember = null;
		
		MemberMapper mapper = session.getMapper(MemberMapper.class);
		
		String encPwd = mapper.selectPwd(requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		if(passwordEncoder.matches(requestMember.getPwd(), encPwd)) {
			
			loginMember = mapper.selectId(requestMember);
		}
		session.close();
		
		return loginMember;
	}
		
		
}
