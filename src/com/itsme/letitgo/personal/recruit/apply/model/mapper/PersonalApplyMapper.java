package com.itsme.letitgo.personal.recruit.apply.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;

public interface PersonalApplyMapper {

	List<SelectPersonalApplyDTO> selectPersonalApply(/* 개인회원번호 */);

	int updateApplyStatus(Map<String, Object> map);

	int insertApplyStatus(Map<String, Object> map);
	
	List<SelectPersonlCompletedApplyDTO> selectPersonalCompletedApply(/* 개인회원번호 */);

	List<SelectPersonlCanceledApplyDTO> selectPersonalCanceledApply(/* 개인회원번호 */);

	// 동기 지원하기 시 insert
	int insertApplyngHistory(Map<String, Object> applyMap);

	int insertApplyingChangeHistory(Map<String, Object> applyMap);



}
