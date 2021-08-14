package com.itsme.letitgo.admin.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.resume.model.dto.SkillsDTO;

public interface SkillsMapper {

	int skillsInsert(SkillsDTO requestSkills);

	List<SkillsDTO> selectAllSkillsList();

	int skillsDelete(int skillsNo);

}
