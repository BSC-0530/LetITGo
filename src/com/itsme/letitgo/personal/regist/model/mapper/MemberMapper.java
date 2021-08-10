package com.itsme.letitgo.personal.regist.model.mapper;

import com.itsme.letitgo.personal.regist.model.dto.CoMemberDTO;
import com.itsme.letitgo.personal.regist.model.dto.MemberDTO;

public interface MemberMapper {

	int MemberReigst(MemberDTO memberDTO);

	int coMemberReigst(CoMemberDTO coMemberDTO);

}
