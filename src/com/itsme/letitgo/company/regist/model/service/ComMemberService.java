package com.itsme.letitgo.company.regist.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.mapper.ComRegistMapper;
import com.itsme.letitgo.personal.regist.model.mapper.RegistMemberMapper;

public class ComMemberService {
	
	
	/*기업 회원 가입용*/
	public int registCoMember(CoMemberDTO coMemberDTO) {
		
		SqlSession session = getSqlSession();
		
		ComRegistMapper mapper = session.getMapper(ComRegistMapper.class);
		
		int result = mapper.coMemberReigst(coMemberDTO);

		int result2 = mapper.coMemberReigstInfo(coMemberDTO);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}
	
	
	
}
