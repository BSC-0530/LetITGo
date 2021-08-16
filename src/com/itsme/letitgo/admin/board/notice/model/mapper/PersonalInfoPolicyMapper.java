package com.itsme.letitgo.admin.board.notice.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;

public interface PersonalInfoPolicyMapper {

	int personalInfoPolicyInsert(PersonalInfoPolicyDTO requestPersonalInfoPolicy);

	List<PersonalInfoPolicyDTO> selectAllPersonalInfoPolicyList();

}
