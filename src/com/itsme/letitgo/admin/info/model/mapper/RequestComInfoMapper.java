package com.itsme.letitgo.admin.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;

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

	//원본파일조회3개
	FileUploadDTO selectLogoFile(int memNo);

	FileUploadDTO selectRepresentFile(int memNo);

	FileUploadDTO selectBusinessFile(int memNo);
	
	//수정요청한 파일 조회
	CoMemberAppHistoryDTO reqSelectLogoFile(int reqNo);

	CoMemberAppHistoryDTO reqSelectRepresentFile(int reqNo);

	CoMemberAppHistoryDTO eeqSelectBusinessFile(int reqNo);
//이미지 수락버튼 업데이트하기
	int updateLogoFile(FileUploadDTO file);

	int updateRepreFile(FileUploadDTO file2);

	int updateBusinFile(FileUploadDTO file3);

	CoMemberAppHistoryDTO ReasionSelected(int reqNo);


}
