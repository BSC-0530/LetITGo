package com.itsme.letitgo.personal.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpSkillsDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectAllJobPostingDTO;

public interface SelectJobPostingMapper {

	List<Object> selectAllJobPosting();

	List<Object> selectJpSkills();

}
