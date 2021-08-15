package com.itsme.letitgo.company.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.InterviewProposalDTO;
import com.itsme.letitgo.company.scout.model.dto.PersonalBrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;

import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

import com.itsme.letitgo.personal.resume.model.dto.SkillsAndCategoryDTO;



public interface CompanyScoutMapper {

	List<Object> companySelectAllScout();

	List<Object> companyScoutSkills();

	List<Object> companyScoutCareea();

	List<BrosweSimplelDTO> browseSelectInfo(int onClickResumeNo);
//	List<Object> browseSelectInfo(int onClickResumeNo);

	List<Integer> careeaNumber(int onClickResumeNo);

	int readingKindsInsert(int onClickResumeNo);

	List<BrosweHistoryDTO> selectBrowseUsingHistroy();

	List<ResumeReadingHistoryDTO> brosweHistoryKindsSelect(int onClickResumeNo);

	int updateTime(int onClickResumeNo);

	int selectAllCountDeepOpen();

	int selectAllCountSimpleOpen();

	int selectAllScountNum();
//개인 마이페이지 쪽 스카우트 현황
	List<PersonalBrosweHistoryDTO> personalBrosweHistorySelect();


//	깊은 열람
	List<ScoutDetailResumeDTO> selectDetailResume(int resumeNo);

//	면접 제안
	int insertInterview(InterviewProposalDTO memNos);

//	얕은 열람시 열람이력 추가
	int insertNewKinds(int onClickResumeNo);

	int insertReadingNewInterview(InterviewProposalDTO memNos);

//	깊은 열람으로 상태 변경
	int updateDetailStatus(int resumeNo);

//	List<SkillsAndCategoryDTO> skillsSelect();





//	int modifyReadingCnt();



}
