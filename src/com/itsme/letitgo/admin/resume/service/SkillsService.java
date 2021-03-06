package com.itsme.letitgo.admin.resume.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

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
		
		session.close();
		
		return result;
	}

	public List<SkillsDTO> selectAllSkillsList() {
		
		SqlSession session = getSqlSession();
		
		SkillsMapper skillsMapper = session.getMapper(SkillsMapper.class);
		
		List<SkillsDTO> skillsList = skillsMapper.selectAllSkillsList();
		
		session.close();
		
		return skillsList;
		
	}

	/*
	 * public int skillsNoDelete(int no) {
	 * 
	 * SqlSession session = getSqlSession();
	 * 
	 * SkillsMapper skillsMapper = session.getMapper(SkillsMapper.class);
	 * 
	 * int result1 = skillsMapper.skillsNoDelete(no);
	 * 
	 * if(result1 > 0) { session.commit(); } else { session.rollback(); }
	 * 
	 * session.close();
	 * 
	 * return result1; }
	 */
		
	
	public int skillsDelete(int skillsNo) {

		SqlSession session = getSqlSession();
		
		SkillsMapper skillsMapper = session.getMapper(SkillsMapper.class);
		
		int result = skillsMapper.skillsDelete(skillsNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	/*
	 * public int skillsSkillsDelete(int skillsNo) {
	 * 
	 * SqlSession session = getSqlSession();
	 * 
	 * SkillsMapper skillsMapper = session.getMapper(SkillsMapper.class);
	 * 
	 * int result2 = skillsMapper.skillsDelete(skillsNo);
	 * 
	 * if(result2 > 0) { session.commit(); } else { session.rollback(); }
	 * 
	 * session.close();
	 * 
	 * return result2;
	 * 
	 * }
	 */


}









