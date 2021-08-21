package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class SelectPersonalApplyService {

	/* 전체지원조회 */
	public List<SelectPersonalApplyDTO> selectPersonalApply(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonalApplyDTO> PersonalApplyList = mapper.selectPersonalApply(memNo);
		
		session.close();
		
		return PersonalApplyList;
	}

	/* 지원완료조회 */
	public List<SelectPersonlCompletedApplyDTO> selectPersonalCompletedApply(int memNo) {

		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonlCompletedApplyDTO> PersonalApplyCompletedList = mapper.selectPersonalCompletedApply(memNo);
		
		session.close();
		
		return PersonalApplyCompletedList;
	}
	
	/* 지원취소조회 */
	public List<SelectPersonlCanceledApplyDTO> selectPersonalCanceledApply(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonlCanceledApplyDTO> PersonalApplyCanceledList = mapper.selectPersonalCanceledApply(memNo);
		
		session.close();
		
		return PersonalApplyCanceledList;
		
	}



}
