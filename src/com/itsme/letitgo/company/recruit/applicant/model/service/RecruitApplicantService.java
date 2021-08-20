package com.itsme.letitgo.company.recruit.applicant.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantResultDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ResumeSkillsAndNameDTO;
import com.itsme.letitgo.company.recruit.applicant.model.mapper.RecruitApplicantMapper;



public class RecruitApplicantService {

	public int selectTotalCount(ApplicantDTO dto) {
		
		SqlSession session = getSqlSession();
		
		RecruitApplicantMapper mapper = session.getMapper(RecruitApplicantMapper.class);
		
		int totalCount = mapper.selectTotalCount(dto);
		
		session.close();
		
		return totalCount;
	}

	public ApplicantResultDTO selectApplicant(ApplicantDTO dto) {
		
		SqlSession session = getSqlSession();
		
		RecruitApplicantMapper mapper = session.getMapper(RecruitApplicantMapper.class);
		
		
		List<ApplicantDTO> applicant = mapper.selectApplicant(dto);
		
		List<ResumeSkillsAndNameDTO> skills = mapper.selectSkills(dto);
		
		ApplicantResultDTO applicantResult = new ApplicantResultDTO();
		
		if(applicant != null && skills != null) {
			
			applicantResult.setApplicantDTO(applicant);
			applicantResult.setResumeSkillsAndNameDTO(skills);
			
		}
		
		session.close();
		
		return applicantResult;
	}


}
