package com.itsme.letitgo.login.model.service;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.login.model.mapper.MemberLoginMapper;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

public class MemberLoginService {

	/* 로그인된 정보와 DB와 확인하여 존재하면 정보를 가져오고 존재하지않으면 null */
	public MemberLoginDTO loginCheck(MemberLoginDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		/* 로그인하려는 회원의 비밀번호를 조회 */
		String encPwd = memberMapper.selectEncryptedPwd(requestMember);
		
		BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		
		MemberLoginDTO loginMember = null;
		
		/* 로그인 하려는 회원의 비밀번호와  조회된 회원의 비밀번호의 일치여부 확인하여 맞으면 정보를 가져옴 */
		if(passwordEncoder.matches(requestMember.getMemPwd(), encPwd)) {
			
			loginMember = memberMapper.selectLoginMember(requestMember);
		}
		
		return loginMember;
	}

	/* 기업회원의 경우 회원의 가입이 승인된 경우 */
	public int selectAppHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectAppHistory(memNo);

		session.close();
		
		return result;

		
	}
	
	/* 기업회원의 경우 회원의 가입이 거절된 경우 */
	public int selectRejectHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectRejectHistory(memNo);

		session.close();
		
		return result;
	}

	/* 기업회원의 경우 회원의 가입이 대기인 경우 */
	public int selectWaitHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		MemberLoginMapper memberMapper = session.getMapper(MemberLoginMapper.class);
		
		int result = memberMapper.selectWaitHistory(memNo);

		session.close();
		
		return result;
	}

		
}
