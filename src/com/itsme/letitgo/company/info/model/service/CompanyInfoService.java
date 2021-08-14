package com.itsme.letitgo.company.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;

public class CompanyInfoService {

	public List<CompanyAddInfoDTO> selectedInfoCompany() {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		List<CompanyAddInfoDTO> infoList = mapper.selectedInfoCompany();
		
		session.close();
		
		return infoList;
	}

	public Map<String, Object> selectCoInfoAndJp(CompanyAddInfoDTO dto) {
		
		SqlSession session = getSqlSession();
		
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		// 기업 회사 정보 담아오기
		CompanyAddInfoDTO comPanyAddInfo = mapper.companyAddInfo(dto);
		
		
		
		System.out.println("service comPanyAddInfo : " + comPanyAddInfo);
		
		
		
		return null;
	}
}
