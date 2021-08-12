package com.itsme.letitgo.company.info.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyTestDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyTestMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class CompanyInfoService {

	public List<CompanyAddInfoDTO> selectedInfoCompany() {
		
		SqlSession session = getSqlSession();
		
		CompanyTestMapper mapper = session.getMapper(CompanyTestMapper.class);
		
		List<CompanyAddInfoDTO> infoList = mapper.selectedInfoCompany();
		
		session.close();
		
		return infoList;
	}

}
