package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

public interface TestCheckPwdMapper {

	MemberLoginDTO selectPwdList(String memNo);

	

}
