package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.MemberDTO;

public interface MemberMapper {

	String selectEncryptedPwd(MemberDTO requestMember);
	
	MemberDTO selectLoginMember(MemberDTO requestMember);


}
