package com.itsme.letitgo.company.scout.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.dto.MainScoutListingDTO;
import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class MainScoutListService {

	public List<MainScoutListingDTO> selectAllScoutList() {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<MainScoutListingDTO> scoutList = mapper.companySelectAllScout();
		
		return scoutList;
	}

}
