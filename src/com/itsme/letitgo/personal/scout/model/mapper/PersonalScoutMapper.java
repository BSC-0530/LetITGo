package com.itsme.letitgo.personal.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

public interface PersonalScoutMapper {

	int updateScoutStatus(int resumeNo);

	List<ResumeDTO> selectResume();

	// 개인 얕은 열람 카운트
	int selectSimpleCount();

	// 열람 상태 조회
	List<ReadingResumeListOfPersonalDTO> selectReadingResumeListOfPersonal();

	// 면접 제안 수락 상태 업데이트
	int updateAcceptScoutKinds(ReadingResumeListOfPersonalDTO resumeAndCoMem);

	

}
