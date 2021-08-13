package com.itsme.letitgo.company.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobFieldDTO;

public interface SelectCoMyJobPostingMapper {

	List<Object> selectCoMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRecruitingMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRequestMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<JpJobFieldDTO> insertRecruit();

}
