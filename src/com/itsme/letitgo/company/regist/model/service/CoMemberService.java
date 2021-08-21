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
	
	/* 입력된 정보로 기업회원가입 등록 */
	public Map<String, Object> registCoMember(CoMemberDTO coMemberDTO) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		/* 입력된 정보로 기업회원가입 등록 */
		int result1 = mapper.coMemberRegist(coMemberDTO);
		
		/* 입력된 정보로 회원번호 조회 */
		int memNo = mapper.SelectCoMemberNo(coMemberDTO.getMemId());
		
		coMemberDTO.setMemNo(memNo);
		
		/* 회원번호로 기업회원 추가정보 등록 */
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
	
	/* 회원가입된 아이디를 통해 회원번호 조회 */
	public int selectMemNo(String memId) {
		
		SqlSession session = getSqlSession();
		
		RegistCoMemberMapper mapper = session.getMapper(RegistCoMemberMapper.class);
		
		int result = mapper.SelectCoMemberNo(memId);

		session.close();
		
		return result;

	
	}
	
	/* 기업회원가입 승인여부이력 생성 */
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

	/* 로고이미지 저장 */
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

	/* 대표이미지 저장 */
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

	/* 사업자등록증 저장 */
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
	
	
}	
