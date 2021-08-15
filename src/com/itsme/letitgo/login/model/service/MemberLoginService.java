package com.itsme.letitgo.login.model.service;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;
import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class MemberLoginService {

	public MemberLoginDTO loginCheck(MemberLoginDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		String encPwd = memberMapper.selectEncryptedPwd(requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		MemberLoginDTO loginMember = null;
		
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
			
			loginMember = memberMapper.selectLoginMember(requestMember);
		}
		
		return loginMember;
	}
		
		
}