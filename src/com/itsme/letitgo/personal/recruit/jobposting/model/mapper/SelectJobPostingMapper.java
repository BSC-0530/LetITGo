package com.itsme.letitgo.personal.recruit.jobposting.model.mapper;

import java.util.List;

public interface SelectJobPostingMapper {

	List<Object> selectAllJobPosting();

	List<Object> selectJpSkills();

	List<Object> selectJobNames();

}
