package com.itsme.letitgo.personal.regist.model.service;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;
import com.itsme.letitgo.personal.regist.model.mapper.RegistMemberMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class MemberService {

	
	/*회원 가입용 메소드*/
	public int registMember(MemberDTO memberDTO) {
		
		SqlSession session = getSqlSession();
		
		RegistMemberMapper mapper = session.getMapper(RegistMemberMapper.class);
		
		int result = mapper.MemberReigst(memberDTO);
				
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}

	

	public int idCheck(String id) {
		
		SqlSession session = getSqlSession();
		
		RegistMemberMapper mapper = session.getMapper(RegistMemberMapper.class);
		
		int result = mapper.idCheck(id);
		
		session.close();
		
		
		return result;
	}

	

}
