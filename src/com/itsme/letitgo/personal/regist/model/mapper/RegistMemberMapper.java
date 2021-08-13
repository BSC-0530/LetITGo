package com.itsme.letitgo.personal.regist.model.mapper;

import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;

public interface RegistMemberMapper {

	int MemberReigst(MemberDTO memberDTO);

	int idCheck(String id);

	


	
	
}
