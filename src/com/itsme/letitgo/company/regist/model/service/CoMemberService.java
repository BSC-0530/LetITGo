package com.itsme.letitgo.company.regist.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.regist.model.dto.CoAttachmentDTO;
import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.company.regist.model.mapper.RegistCoMemberMapper;

public class CoMemberService {
	
	public Map<String, Object> registCoMember(CoMemberDTO coMemberDTO) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result1 = mapper.coMemberRegist(coMemberDTO);
		
		int memNo = mapper.SelectCoMemberNo(coMemberDTO.getMemId());
		
		coMemberDTO.setMemNo(memNo);
		
		int result2 = mapper.coMemberAddInfoRegist(coMemberDTO);
		
		if(result1 > 0 && result2 > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		Map<String, Object> result = new HashMap<>();		
		result.put("result1", result1);
		result.put("result2", result2);
		
		session.close();
		
		return result;
	}

	public int selectMemNo(String memId) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.SelectCoMemberNo(memId);

		session.close();
		
		return result;

	
}

	public int insertCoLogoAttachment(CoAttachmentDTO coLogoAttachment) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.insertCoLogoAttachment(coLogoAttachment);
		
		if(result > 0 ) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int insertCoRepresentativImageAttachment(CoAttachmentDTO coRepresentativImageAttachment) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.insertCoRepresentativImageAttachment(coRepresentativImageAttachment);
		
		if(result > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int insertBusinessRegistrationAttachment(CoAttachmentDTO businessRegistrationAttachment) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.insertBusinessRegistrationAttachment(businessRegistrationAttachment);
		
		if(result > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public int insertRequestAppHistory(int memNo) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.insertRequestAppHistory(memNo);
		
		if(result > 0 ) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;

	}
	
}	
