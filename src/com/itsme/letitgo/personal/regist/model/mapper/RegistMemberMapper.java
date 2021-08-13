package com.itsme.letitgo.personal.regist.model.mapper;

import com.itsme.letitgo.personal.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;

public interface RegistMemberMapper {

	int MemberReigst(MemberDTO memberDTO);

	int coMemberReigst(CoMemberDTO coMemberDTO);

	int idCheck(String id);

	int coMemberReigstInfo(CoMemberDTO coMemberDTO);

	
}
