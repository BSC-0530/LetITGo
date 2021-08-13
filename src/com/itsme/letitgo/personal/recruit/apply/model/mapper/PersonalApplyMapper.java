package com.itsme.letitgo.personal.recruit.apply.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;

public interface PersonalApplyMapper {

	List<SelectPersonalApplyDTO> selectPersonalApply(/* 개인회원번호 */);

	int selectOwnFormCheck(/* 채용공고번호 */);

}
