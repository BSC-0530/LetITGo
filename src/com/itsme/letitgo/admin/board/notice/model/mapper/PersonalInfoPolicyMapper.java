package com.itsme.letitgo.admin.board.notice.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;

public interface PersonalInfoPolicyMapper {

	int personalInfoPolicyInsert(PersonalInfoPolicyDTO requestPersonalInfoPolicy);

	List<PersonalInfoPolicyDTO> selectAllPersonalInfoPolicyList();

	PersonalInfoPolicyDTO selectDetailPersonalInfoPolicy(int postNo);	//나중에 지워야됌

	int personalInfoPolicyModifyInsert(PersonalInfoPolicyDTO personalInfoPolicyModifyInsert);

	List<PersonalInfoPolicyDTO> selectDetailList(int postNo);

}
