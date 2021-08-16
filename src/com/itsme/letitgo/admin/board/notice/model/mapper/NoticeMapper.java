package com.itsme.letitgo.admin.board.notice.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;

public interface NoticeMapper {

	List<PersonalInfoPolicyDTO> noticeAllSelected();

	int noticeInsert(PersonalInfoPolicyDTO notice);

	PersonalInfoPolicyDTO selectDetailsNotice(int postNo);

	int noticeModifyInsert(PersonalInfoPolicyDTO noticeModifyInsert);

	int updateStatus(PersonalInfoPolicyDTO updateStatus);

}
