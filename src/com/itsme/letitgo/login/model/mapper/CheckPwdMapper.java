package com.itsme.letitgo.login.model.mapper;

import com.itsme.letitgo.login.model.dto.MemberLoginDTO;

public interface CheckPwdMapper {

	MemberLoginDTO selectPwdList(int memNo);

	int memEntYnStatus(int memNo);

}
