package com.itsme.letitgo.personal.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;

public interface PersonalInfoMapper {

	/* 스카우트 얕은열람 당한 횟수 조회 */
	int selectshallowBrowsingNum(int memNo);

	/* 스카우트 깊은열람 당한 횟수 조회 */
	int selectDeepBrowsingNum(int memNo);

	/* 스카우트 면접제안 당한 횟수 조회 */
	int selectinterviewProposalNum(int memNo);

	/* 지원완료한 횐수 */
	int selectApplicationCompletedNum(int memNo);

	/* 지원취소한 횟수 */
	int selectApplicationCanceledNum(int memNo);

	/* 북마크한 횟수 */
	int selectBookmarkNum(int memNo);

	/*이력서 열람 제한 기업 조회 */
	List<RestrictedCompanyDTO> selectRectrictedCompany(int memNo);

	/*개인회원 정보수정*/
	int modifyPersonalInfo(ModifyMemberDTO mdMemberDTO);

	String selectTitlePath(int memNo); 

}
