package com.itsme.letitgo.personal.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpSkillsDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectAllJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;

public class SelectJobPostingService {

	public Map<String, List<Object>> selectAllJobPosting() {

		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<Object> jpAndInfo = mapper.selectAllJobPosting();
		
		List<Object> jpSkills = mapper.selectJpSkills();
		
		Map<String, List<Object>> jp = new HashMap<>();
		jp.put("jpAndInfo", jpAndInfo);
		jp.put("jpSkills", jpSkills);
		
		
		
		System.out.println("service jpAndInfo : " + jpAndInfo);
		session.close();
		
		return jp;
	}

}
