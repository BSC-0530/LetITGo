package com.itsme.letitgo.company.scout.model.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.CompanyCareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.SkillsAndCategoryDTO;


public interface CompanyScoutMapper {

	List<Object> companySelectAllScout();

	List<Object> companyScoutSkills();

	List<Object> companyScoutCareea();

	List<BrosweSimplelDTO> browseSelectInfo(int onClickResumeNo);
//	List<Object> browseSelectInfo(int onClickResumeNo);

	List<Integer> careeaNumber(int onClickResumeNo);



}
