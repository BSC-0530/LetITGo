package com.itsme.letitgo.company.recruit.applicant.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantResultDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ResumeSkillsAndNameDTO;

public interface RecruitApplicantMapper {

	int selectTotalCount(ApplicantDTO dto);

	List<ApplicantDTO> selectApplicant(ApplicantDTO dto);

	List<ResumeSkillsAndNameDTO> selectSkills(ApplicantDTO dto);

	
}
