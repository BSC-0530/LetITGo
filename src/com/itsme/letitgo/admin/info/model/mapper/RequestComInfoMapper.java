package com.itsme.letitgo.admin.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;

public interface RequestComInfoMapper {

	List<CoMemberAppHistoryDTO> selectedReqList();

	List<CompanyAddInfoDTO> selectedOrign();
	
	
//상세조회할때
	CompanyAddInfoDTO adminDetailPageOrigin(int memNo);

	CoMemberAppHistoryDTO adminDetailPageRequest(int reqNo);

	//수락버튼 눌러서 업데이트해줌
	int adminAcceptRequestInfo(CompanyAddInfoDTO info);

	int adminAcceptRequestInfoKinds(int coReqNo);

	int rejectReasonInsert(CoMemberAppHistoryDTO info);

	int rejectReasonTextInsert(CoMemberAppHistoryDTO info);


}
