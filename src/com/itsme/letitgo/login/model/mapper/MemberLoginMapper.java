package com.itsme.letitgo.login.model.mapper;

import java.util.Map;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

public interface MemberLoginMapper {

	/* 로그인하려는 회원의 비밀번호를 조회 */
	String selectEncryptedPwd(MemberLoginDTO requestMember);
	
	/* 로그인 하려는 회원의 비밀번호와  조회된 회원의 비밀번호의 일치여부 확인하여 맞으면 정보를 가져옴 */
	MemberLoginDTO selectLoginMember(MemberLoginDTO requestMember);

	/* 기업회원의 경우 회원의 가입이 승인된 경우 */
	int selectAppHistory(int memNo);

	/* 기업회원의 경우 회원의 가입이 거절된 경우 */
	int selectRejectHistory(int memNo);

	/* 기업회원의 경우 회원의 가입이 대기인 경우 */
	int selectWaitHistory(int memNo);

	/* 이메일을 통해서 아이디를 조회 */
	String selectFogetId(String memEmail);

	/* 아이디와 이메일을 통해 존재하는 회원이 있는지 확인  */
	int checkIdEmail(Map<String, String> map);

	 /* 아이디에 암호회된 비밀번호를 넣어줌 */
	int updateMemPwd(Map<String, String> updateMap);


}
