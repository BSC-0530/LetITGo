package com.itsme.letitgo.company.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;

public interface SelectCoMyJobPostingMapper {

	List<Object> selectCoMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRecruitingMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

	List<Object> selectRequestMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO);

}
