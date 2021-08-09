package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.CoMemberDTO;
import com.itsme.letitgo.login.model.dto.MemberDTO;

public interface MemberMapper {

	int registMember(MemberDTO requestMember);

	int registCoMember(CoMemberDTO requestCoMember);

}
