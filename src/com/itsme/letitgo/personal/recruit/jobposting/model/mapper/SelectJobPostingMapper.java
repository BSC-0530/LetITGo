package com.itsme.letitgo.personal.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;

public interface SelectJobPostingMapper {

	List<Object> selectAllJobPosting();

	List<Object> selectJpSkills();

	List<Object> selectJobNames();

	SelectJobPostingDTO selectDetailedJobPosting(int selectJobPostNo);

	List<Object> selectDeteildeJpSkills(int selectJobPostNo);


}
