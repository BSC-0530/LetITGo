package com.itsme.letitgo.company.recruit.applicant.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.DetailResumeDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.PortfolioDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ResumeSkillsAndNameDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.SelfIntroductionDTO;

public interface RecruitApplicantMapper {

	int selectTotalCount(ApplicantDTO dto);

	List<ApplicantDTO> selectApplicant(ApplicantDTO dto);

	List<ResumeSkillsAndNameDTO> selectSkills(ApplicantDTO dto);

	DetailResumeDTO selectResume(int resumeNo);

	List<AwardHistoryDTO> selectAwardHistory(int resumeNo);

	List<CareerHistoryDTO> selectCareerHistory(int resumeNo);

	List<EducationHistoryDTO> selectEducationHistory(int resumeNo);

	List<SelfIntroductionDTO> selectSelfIntroduction(int resumeNo);

	List<LicenseHistoryDTO> selectLicenseHistory(int resumeNo);

	List<PortfolioDTO> selectPortFolio(int resumeNo);

	List<ResumeSkillsAndNameDTO> selectSkillsAndName(int resumeNo);

	int updateBrowesStatus(ApplicantDTO updateDTO);

	
}
