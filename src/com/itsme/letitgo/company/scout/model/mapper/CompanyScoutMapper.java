package com.itsme.letitgo.company.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
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

	ResumeReadingHistoryDTO brosweHistoryKindsSelect(int onClickResumeNo);

	int updateTime(int onClickResumeNo);

	int selectAllCountDeepOpen();

	int selectAllCountSimpleOpen();

	int selectAllScountNum();
//개인 마이페이지 쪽 스카우트 현황
	List<PersonalBrosweHistoryDTO> personalBrosweHistorySelect();


//	깊은 열람
	List<ScoutDetailResumeDTO> selectDetailResume();

	int insertInterview(int memNo);

//	List<SkillsAndCategoryDTO> skillsSelect();





//	int modifyReadingCnt();



}
