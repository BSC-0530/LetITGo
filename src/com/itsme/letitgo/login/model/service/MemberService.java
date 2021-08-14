package com.itsme.letitgo.login.model.service;

import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.mapper.MemberMapper;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class MemberService {

	public MemberDTO loginCheck(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		MemberMapper memberMapper = session.getMapper(MemberMapper.class);
		
		String encPwd = memberMapper.selectEncryptedPwd(requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		MemberDTO loginMember = null;
		
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
			
			loginMember = memberMapper.selectLoginMember(requestMember);
		}
		
		return loginMember;
	}
		
		
}
