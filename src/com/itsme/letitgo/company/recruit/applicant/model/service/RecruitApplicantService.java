package com.itsme.letitgo.company.recruit.applicant.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ApplicantResultDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.DetailResumeDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.PortfolioDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.ResumeSkillsAndNameDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.SelectDetailedResumeDTO;
import com.itsme.letitgo.company.recruit.applicant.model.dto.SelfIntroductionDTO;
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
		
		/* 이력서별 스킬과 이력서 내용, 사진, 회원정보 담아온다.*/
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

	public SelectDetailedResumeDTO selectDetailedApplicantResume(int resumeNo) {
		
		SqlSession session = getSqlSession();
		
		RecruitApplicantMapper mapper = session.getMapper(RecruitApplicantMapper.class);
		
		SelectDetailedResumeDTO resultResume = new SelectDetailedResumeDTO();
		
		/* 이력서에 들어가는 내용 호출을 통해서 값 가져오고 dto에 담기 */
		DetailResumeDTO detailResume = mapper.selectResume(resumeNo);
		List<AwardHistoryDTO> awardHistoryList = mapper.selectAwardHistory(resumeNo);
		List<CareerHistoryDTO> careerHistoryList = mapper.selectCareerHistory(resumeNo);
		List<EducationHistoryDTO> educationHistoryList = mapper.selectEducationHistory(resumeNo);
		List<SelfIntroductionDTO> selfIntroductionList = mapper.selectSelfIntroduction(resumeNo);
		List<LicenseHistoryDTO> licenseHistoryList = mapper.selectLicenseHistory(resumeNo);
		List<PortfolioDTO> portFolioList = mapper.selectPortFolio(resumeNo);
		List<ResumeSkillsAndNameDTO> resumeSkillsAndNameList = mapper.selectSkillsAndName(resumeNo);
		
		resultResume.setDetailResume(detailResume);
		resultResume.setAwardHistoryList(awardHistoryList);
		resultResume.setCareerHistoryList(careerHistoryList);
		resultResume.setEducationHistoryList(educationHistoryList);
		resultResume.setLicenseHistoryList(licenseHistoryList);
		resultResume.setPortFolioList(portFolioList);
		resultResume.setResumeSkillsAndNameList(resumeSkillsAndNameList);
		resultResume.setSelfIntroductionList(selfIntroductionList);
		
		session.close();
		
		return resultResume;
	}

	public int updateBrowesStatus(ApplicantDTO updateDTO) {
		
		// 세션열기
		SqlSession session = getSqlSession();
		
		// 매퍼 가져오기
		RecruitApplicantMapper mapper = session.getMapper(RecruitApplicantMapper.class);
		
		int result = mapper.updateBrowesStatus(updateDTO);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		return result;
	}


}
