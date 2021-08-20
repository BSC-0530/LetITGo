package com.itsme.letitgo.admin.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;

public interface InsertRequestMapper {

	List<InsertRequestDTO> insertRequestList();
//기업정보변경 요청
	int updateRequestAddInfo(CoMemberAppHistoryDTO comAd);
//로고
	int insertCoLogoAttachment(CoMemberAppHistoryDTO logoFile);
//대표이미지
	int insertCoRepresentativImageAttachment(CoMemberAppHistoryDTO representativImage);
//사업자등록증
	int insertBusinessRegistrationAttachment(CoMemberAppHistoryDTO businessNO);


}
