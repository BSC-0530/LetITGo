package com.itsme.letitgo.personal.regist.model.service;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;
import com.itsme.letitgo.personal.regist.model.mapper.RegistInMemberMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class MemberService {
	
	/* 개인회원가입 등록 */
	public int registInMember(InMemberDTO requestMember) {

		SqlSession session = getSqlSession();

		RegistInMemberMapper mapper = session.getMapper(RegistInMemberMapper.class);

		int result = mapper.InMemberReigst(requestMember);

		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();

		return result;
	}


}
