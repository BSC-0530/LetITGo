package com.itsme.letitgo.personal.info.model.mapper;

public interface PersonalInfoMapper {

	int selectshallowBrowsingNum(/* 개인회원번호 */);

	int selectDeepBrowsingNum(/* 개인회원번호 */);

	int selectinterviewProposalNum(/* 개인회원번호 */);

	int selectApplicationCompletedNum(/* 개인회원번호 */);

	int selectApplicationCanceledNum(/* 개인회원번호 */);

	int selectBookmarkNum(/* 개인회원번호 */);

}
