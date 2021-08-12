package com.itsme.letitgo.company.scout.model.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.mapper.BrowseInfoMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class BrowseInfoService {

	public Map<String, List<Object>> selectInfo() {
		
		SqlSession session = getSqlSession();
		
		BrowseInfoMapper mapper = session.getMapper(BrowseInfoMapper.class);
		
		List<Object> candiName = mapper.candiNameSelect();
		List<Object> candiSkills = mapper.candiSkillSelect();
		List<Object> candiJob = mapper.candiJobSelect();
		List<Object> candiCareer = mapper.candiCareerSelect();
		
		
		session.close();
		
		
		return null;
	}

}
