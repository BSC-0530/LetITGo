package com.itsme.letitgo.personal.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;

public class SelectJobPostingService {

	public Map<String, List<Object>> selectAllJobPosting() {

		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<Object> jpAndInfo = mapper.selectAllJobPosting();
		
		List<Object> jpSkills = mapper.selectJpSkills();
		
		List<Object> jobNameList = mapper.selectJobNames();
		System.out.println(jobNameList);
		
		Map<String, List<Object>> jp = new HashMap<>();
		jp.put("jpAndInfo", jpAndInfo);
		jp.put("jpSkills", jpSkills);
		jp.put("jobNameList", jobNameList);
		
		System.out.println("service jpAndInfo : " + jpAndInfo);
		session.close();
		
		return jp;
	}

	public Map<String, List<Object>> selectDetailedJobPosting(int selectJobPostNo) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		Map<String, List<Object>> jp = new HashMap<>();
		
		List<Object> detailedJobPosting = mapper.selectDetailedJobPosting(selectJobPostNo);
		
		System.out.println("selectDetailedJobPosting : " + detailedJobPosting);
//		
//		LIST<OBJECT> JPSKILLS = MAPPER.SELECTJPSKILLS();
		
		return jp;
	}

}
