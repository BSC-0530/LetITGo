package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCanceledApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonlCompletedApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class SelectPersonalApplyService {

	public List<SelectPersonalApplyDTO> selectPersonalApply() {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonalApplyDTO> PersonalApplyList = mapper.selectPersonalApply();
		
		session.close();
		
		return PersonalApplyList;
	}

	public List<SelectPersonlCompletedApplyDTO> selectPersonalCompletedApply() {

		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonlCompletedApplyDTO> PersonalApplyCompletedList = mapper.selectPersonalCompletedApply();
		
		session.close();
		
		return PersonalApplyCompletedList;
	}
	
	public List<SelectPersonlCanceledApplyDTO> selectPersonalCanceledApply() {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonlCanceledApplyDTO> PersonalApplyCanceledList = mapper.selectPersonalCanceledApply();
		
		session.close();
		
		return PersonalApplyCanceledList;
		
	}



}
