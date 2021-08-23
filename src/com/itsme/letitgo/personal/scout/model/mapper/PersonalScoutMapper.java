package com.itsme.letitgo.personal.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.scout.model.dto.MemNoAndResumeNoDTO;
import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;

public interface PersonalScoutMapper {

	int updateScoutStatus(MemNoAndResumeNoDTO mr);

	List<ResumeDTO> selectResume(int memberNo);

	// 개인 얕은 열람 카운트
	int selectSimpleCount();

	// 열람 상태 조회
	List<ReadingResumeListOfPersonalDTO> selectReadingResumeListOfPersonal();

	// 면접 제안 수락 상태 업데이트
	int updateAcceptScoutKinds(ReadingResumeListOfPersonalDTO resumeAndCoMem);
	//스카우트 현황 파란박스 카운트
	int selectAllCountSimpeOpen(int memNo);
	//스카우트 현황 파란박스 카운트
	int selectAllCountDeepOpen(int memNo);
	//스카우트 현황 파란박스 카운트
	int selectAllScountNum(int memNo);

	

}
