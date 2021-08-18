package com.itsme.letitgo.company.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;

public class CompanyInfoService {

	public CompanyAddInfoDTO selectedInfoCompany() {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyAddInfoDTO infoList = mapper.selectedInfoCompany();
		
		session.close();
		
		return infoList;
	}

	public Map<String, List<Object>> selectCoInfoAndJp(CompanyAddInfoDTO dto) {
		
		SqlSession session = getSqlSession();
		
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		// 기업 회사 정보 담아오기
		List<Object> companyAddInfo = mapper.companyAddInfo(dto);
		
		
		// 공고List를 담아오기 위해 변수 선언
		List<Object> myJobPosting = new ArrayList<>();
		
		// coMemNo를 담은 dto 넘겨서 일치하는 공고 정보 담아오기
		myJobPosting = mapper.myJobPosting(dto);
		
		Map<String, List<Object>> coAddInfoAndJobPosting = new HashMap<>();
		
		coAddInfoAndJobPosting.put("companyAddInfo", companyAddInfo);
		coAddInfoAndJobPosting.put("myJobPosting", myJobPosting);
		
		
		return coAddInfoAndJobPosting;
	}

	public CompanyInfoDTO selectCoMemInfo() {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyInfoDTO coMemDTO = mapper.coMemInfoSelect();
		
		
		return coMemDTO;
	}
}
