package com.itsme.letitgo.personal.regist.model.mapper;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;

public interface RegistInMemberMapper {

	/* 개인회원가입 등록 */
	int InMemberReigst(InMemberDTO memberDTO);

	/* 중복된 아이디가 있는지 확인 */
	int duplicateIdCheck(String memId);



	


	
	
}
