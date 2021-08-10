package com.itsme.letitgo.admin.resume.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.admin.resume.model.mapper.SkillsMapper;

public class SkillsService {

	public int skillsInsert(SkillsDTO requestSkills) {
		
		SqlSession session = getSqlSession();
		
		SkillsMapper skillsMapper = session.getMapper(SkillsMapper.class);
		
		int result = skillsMapper.skillsInsert(requestSkills);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		return result;
	}

}
