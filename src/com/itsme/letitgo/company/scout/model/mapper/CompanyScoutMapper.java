package com.itsme.letitgo.company.scout.model.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;


public interface CompanyScoutMapper {

	List<Object> companySelectAllScout();

	List<Object> companyScoutSkills();

	List<Object> companyScoutCareea();

	List<BrosweSimplelDTO> browseSelectInfo(int onClickResumeNo);




}
