package com.itsme.letitgo.company.regist.model.mapper;

import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;

public interface RegistCoMemberMapper {

	int coMemberRegist(CoMemberDTO coMemberDTO);

	int coMemberAddInfoRegist(CoMemberDTO coMemberDTO);

	int SelectCoMemberNo(String memId);

	int duplicateIdCheck(String memId);

}
