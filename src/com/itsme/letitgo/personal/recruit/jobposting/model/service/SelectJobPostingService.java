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

	public Map<String, Object> selectDetailedJobPosting(int selectJobPostNo) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		// 선택한 공고 정보와 공고의 요구 스킬을 담아줄 Map 인스턴스 생성
		Map<String, Object> jp = new HashMap<>();
		
		// 조회 후 값을 변수에 담음
		SelectJobPostingDTO detailedJobPosting = mapper.selectDetailedJobPosting(selectJobPostNo);
		List<Object> deteildeJpSkills = mapper.selectDeteildeJpSkills(selectJobPostNo);
		
		System.out.println("selectDetailedJobPosting : " + detailedJobPosting);
		System.out.println("deteildeJpSkills : " + deteildeJpSkills);
		
		// return값으로 넘겨주기 위해 map에 담기 
		jp.put("detailedJobPosting", detailedJobPosting);
		jp.put("deteildeJpSkills", deteildeJpSkills);
		
	
		
		return jp;
	}

}
