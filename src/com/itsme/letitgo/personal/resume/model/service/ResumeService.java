package com.itsme.letitgo.personal.resume.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.mapper.ResumeMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class ResumeService {

	public List<ResumeDTO> selectAllResumeList() {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		List<ResumeDTO> resumeList = mapper.selectAllResumeList();
		
		return resumeList;
	}

}
