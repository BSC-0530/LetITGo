package com.itsme.letitgo.admin.resume.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;
import com.itsme.letitgo.admin.resume.model.mapper.SkillsCategoryMapper;

public class SkillsCategoryService {
	
	public int skillsCategoryInsert(SkillsCategoryDTO requestSkillsCategory) {

		SqlSession session = getSqlSession();
		
		SkillsCategoryMapper skillsCategoryMapper = session.getMapper(SkillsCategoryMapper.class);
		
		int result = skillsCategoryMapper.skillsCategoryInsert(requestSkillsCategory);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		session.close();
		
		return result;

	}

	public List<SkillsCategoryDTO> selectAllSkillsCategoryList() {

		SqlSession session = getSqlSession();
		
		SkillsCategoryMapper skillsCategoryMapper = session.getMapper(SkillsCategoryMapper.class);
		
		List<SkillsCategoryDTO> skillsCategoryList = skillsCategoryMapper.selectAllSkillsCategoryList();
		
		session.close();
		
		return skillsCategoryList;
		
	}

	public int skillsCategoryDelete(int no) {
		
		SqlSession session = getSqlSession();
		
		SkillsCategoryMapper skillsCategoryMapper = session.getMapper(SkillsCategoryMapper.class);
		
		int result = skillsCategoryMapper.skillsCategoryDelete(no);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}



}
