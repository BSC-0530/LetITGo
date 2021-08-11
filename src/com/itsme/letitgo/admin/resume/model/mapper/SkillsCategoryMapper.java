package com.itsme.letitgo.admin.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.resume.model.dto.SkillsCategoryDTO;

public interface SkillsCategoryMapper {

	int skillsCategoryInsert(SkillsCategoryDTO requestSkillsCategory);

	List<SkillsCategoryDTO> selectAllSkillsCategoryList();

	int skillsCategoryDelete(int no);
	
//	List<SkillsCategoryDTO> selectAllSkillsCategoryList(int no);


}
