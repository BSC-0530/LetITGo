package com.itsme.letitgo.personal.resume.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.mapper.ResumeMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class ResumeService {

	public List<ResumeDTO> selectAllResumeList() {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		List<ResumeDTO> resumeList = mapper.selectAllResumeList();
		
		session.close();
		
		return resumeList;
	}

	public List<DetailResumeDTO> selectDetailResumeList() {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		List<DetailResumeDTO> detailList = mapper.selectDetailResumeList();
		
		session.close();
		
		return detailList;
	}

	public int insertResume(CareerHistoryDTO car) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		System.out.println(car);
		
		int result = mapper.insertResume(car);
		
		return result;
	}

}
