package com.itsme.letitgo.personal.regist.model.mapper;

import com.itsme.letitgo.personal.regist.model.dto.InMemberDTO;

public interface RegistInMemberMapper {

	int InMemberReigst(InMemberDTO memberDTO);

	int duplicateIdCheck(String memId);



	


	
	
}
