package com.itsme.letitgo.personal.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JobPostingAndAddInfoDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;

public class SelectJobPostingService {

	public List<JobPostingAndAddInfoDTO> selectAllJobPosting() {

		SqlSession session = getSqlSession();
		
		//JobPostingAndAddInfoDTO jpAndInfo = new JobPostingAndAddInfoDTO();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<JobPostingAndAddInfoDTO> jpAndInfo = mapper.selectAllJobPosting();
		
		System.out.println("service jpAndInfo : " + jpAndInfo);
		session.close();
		
		return jpAndInfo;
	}

}
