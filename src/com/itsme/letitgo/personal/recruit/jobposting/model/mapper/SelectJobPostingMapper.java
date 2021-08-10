package com.itsme.letitgo.personal.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JobPostingAndAddInfoDTO;

public interface SelectJobPostingMapper {

	List<JobPostingAndAddInfoDTO> selectAllJobPosting();

}
