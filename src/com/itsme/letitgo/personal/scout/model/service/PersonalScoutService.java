package com.itsme.letitgo.personal.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.mapper.PersonalScoutMapper;

public class PersonalScoutService {

	public int updateScoutStatus(int resumeNo) {

		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int result = mapper.updateScoutStatus(resumeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<ResumeDTO> selectResume() {

		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		List<ResumeDTO> resumeList = mapper.selectResume();
		
		session.close();
		
		return resumeList;
	}

	public List<ReadingResumeListOfPersonalDTO> selectReadingResumeListOfPersonal() {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		List<ReadingResumeListOfPersonalDTO> readList = mapper.selectReadingResumeListOfPersonal();
		
		session.close();
		
		return readList;
	}

	public int updateAcceptScoutKinds(ReadingResumeListOfPersonalDTO resumeAndCoMem) {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int result = mapper.updateAcceptScoutKinds(resumeAndCoMem);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	
	
	

}
