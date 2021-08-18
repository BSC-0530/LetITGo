package com.itsme.letitgo.company.recruit.jobposting.model.mapper;

import java.util.ArrayList;
import java.util.List;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.JpSkillsDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.RequestJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;

public interface SelectCoMyJobPostingMapper {

	List<Object> selectCoMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRecruitingMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRequestMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectJobName();

	List<Object> selectSkillsCategory();

	List<Object> selectSkills();

	int insertJobPosting(RequestJobPostingDTO dto);
	
	int insertSkills(JpSkillsDTO skillsDTO);

	int insertSkills(RequestJobPostingDTO dto);

	int insertJobPostingAppHistory(int jobPostNo);

	SelectCoMyJobPostingDTO updateRecruit(int jobPostNo);

	ArrayList<JpSkillsDTO> selectSkillsFromCategory(int categoryNo);

	int updateJobPostingAppHistory(int jobPostNo);
	


}
