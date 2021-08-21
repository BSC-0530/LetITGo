package com.itsme.letitgo.personal.recruit.apply.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;

public interface PersonalApplyMapper {

	/* 전체지원조회 */
	List<SelectPersonalApplyDTO> selectPersonalApply(int memNo);

	/* 채용공고별지원내역의 지원상태를 지원취소로 변경 */
	int updateApplyStatus(Map<String, Object> map);

	/* 지원내역상태변경이력을 추가 */
	int insertApplyStatus(Map<String, Object> map);
	
	/* 지원완료조회 */
	List<SelectPersonlCompletedApplyDTO> selectPersonalCompletedApply(int memNo);

	/* 지원취소조회 */
	List<SelectPersonlCanceledApplyDTO> selectPersonalCanceledApply(int memNo);

	// 동기 지원하기 시 insert
	int insertApplyngHistory(Map<String, Integer> applyMap);

	int insertApplyingChangeHistory(Map<String, Integer> applyMap);

	int modifyApplyingHistory(Map<String, Integer> applyMap);



}
