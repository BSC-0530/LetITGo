package com.itsme.letitgo.company.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;


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


//	int modifyReadingCnt();



}
