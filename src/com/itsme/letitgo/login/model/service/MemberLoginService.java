package com.itsme.letitgo.login.model.service;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

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

	public int selectAppHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectAppHistory(memNo);

		session.close();
		
		return result;

		
	}

	public int selectRejectHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectRejectHistory(memNo);

		session.close();
		
		return result;
	}

	public int selectWaitHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectWaitHistory(memNo);

		session.close();
		
		return result;
	}

	// test용
	public List<MemberLoginDTO> selectAllPwdList() {
		
		
		
		return null;
	}
		
		
}
