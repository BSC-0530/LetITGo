package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

public interface MemberLoginMapper {

	String selectEncryptedPwd(MemberLoginDTO requestMember);
	
	MemberLoginDTO selectLoginMember(MemberLoginDTO requestMember);


}
