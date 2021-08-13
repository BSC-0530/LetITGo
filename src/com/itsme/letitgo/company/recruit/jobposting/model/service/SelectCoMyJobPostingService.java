package com.itsme.letitgo.company.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;
import com.itsme.letitgo.company.recruit.jobposting.model.mapper.SelectCoMyJobPostingMapper;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobFieldDTO;


public class SelectCoMyJobPostingService {

	public Map<String, List<Object>> selectMyJobPosting(SelectCoMyJobPostingDTO selectCoMyJobPostingDTO) {
		
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		
		Map<String, List<Object>> selectJobPosting = new HashMap<>();
		
		List<Object> allJobPosting = mapper.selectCoMyJobPosting(selectCoMyJobPostingDTO);
		
		List<Object> recruitingJopPosting = mapper.selectRecruitingMyJobPosting(selectCoMyJobPostingDTO);
		
		List<Object> requestJobPosting = mapper.selectRequestMyJobPosting(selectCoMyJobPostingDTO);
		
		selectJobPosting.put("allJobPosting", allJobPosting);
		selectJobPosting.put("recruitingJopPosting", recruitingJopPosting);
		selectJobPosting.put("requestJobPosting", requestJobPosting);
		
		session.close();
		
		return selectJobPosting;
	}

	public List<JpJobFieldDTO> insertRecruit() {
		SqlSession session = getSqlSession();
		
		SelectCoMyJobPostingMapper mapper = session.getMapper(SelectCoMyJobPostingMapper.class);
		
		List<JpJobFieldDTO> jobNameList = mapper.insertRecruit();
		System.out.println("Service jobNameList : " + jobNameList);
				
		session.close();
				
		return jobNameList;
	}

}
