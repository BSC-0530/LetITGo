package com.itsme.letitgo.login.model.mapper;

import java.util.Map;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

public interface MemberLoginMapper {

	String selectEncryptedPwd(MemberLoginDTO requestMember);
	
	MemberLoginDTO selectLoginMember(MemberLoginDTO requestMember);

	int selectAppHistory(int memNo);

	int selectRejectHistory(int memNo);

	int selectWaitHistory(int memNo);

	String selectFogetId(String memEmail);

	int checkIdEmail(Map<String, String> map);

	int updateMemPwd(Map<String, String> updateMap);


}
