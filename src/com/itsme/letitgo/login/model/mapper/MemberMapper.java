package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.MemberDTO;

public interface MemberMapper {

	String selectPwd(MemberDTO requestMember);

	MemberDTO selectId(MemberDTO requestMember);

	

}
