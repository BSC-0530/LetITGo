package com.itsme.letitgo.login.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.login.controller.Member;
import com.itsme.letitgo.login.model.dto.CoMemberDTO;
import com.itsme.letitgo.login.model.dto.MemberDTO;
import com.itsme.letitgo.login.model.mapper.MemberMapper;

public class MemberService {

	//개인 회원가입용 
	public int registMember(MemberDTO requestMember) {
		
		SqlSession session = getSqlSession();
		
		MemberMapper memberMapper = session.getMapper(MemberMapper.class);
		
		int result = memberMapper.registMember(requestMember);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		
		return result;
	}

	//기업 회원가입용
	public int registCoMember(CoMemberDTO requestCoMember) {

		SqlSession session = getSqlSession();
		
		MemberMapper memberMapper = session.getMapper(MemberMapper.class);
		
		int result = memberMapper.registCoMember(requestCoMember);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		
		return result;
	}
	
	//로그인 처리용
	public MemberDTO loginCheck(MemberDTO requestMember) {
		// TODO Auto-generated method stub
		return null;
	}

	//이메일 인증
	public MemberDTO memberLogin(String memId) {
		// TODO Auto-generated method stub
		return null;
	}

	




	
	}


