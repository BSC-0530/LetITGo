package com.itsme.letitgo.personal.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;

public interface PersonalInfoMapper {

	int selectshallowBrowsingNum(/* 개인회원번호 */);

	int selectDeepBrowsingNum(/* 개인회원번호 */);

	int selectinterviewProposalNum(/* 개인회원번호 */);

	int selectApplicationCompletedNum(/* 개인회원번호 */);

	int selectApplicationCanceledNum(/* 개인회원번호 */);

	int selectBookmarkNum(/* 개인회원번호 */);

	List<RestrictedCompanyDTO> selectRectrictedCompany(int memNo);

	int modifyPersonalInfo(ModifyMemberDTO mdMemberDTO); //개인회원 정보수정

}
