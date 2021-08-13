package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.dto.SelectPersonalApplyDTO;
import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class SelectPersonalApplyService {

	public List<SelectPersonalApplyDTO> selectPersonalApply() {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		List<SelectPersonalApplyDTO> PersonalApplyList = mapper.selectPersonalApply();
		
		session.close();
		
		return PersonalApplyList;
	}

	public int selectOwnFormCheck() {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		int PersonalApplyList = mapper.selectOwnFormCheck();
		
		session.close();
		
		return PersonalApplyList;
	}

}
