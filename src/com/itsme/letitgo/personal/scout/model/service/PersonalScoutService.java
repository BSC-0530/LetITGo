package com.itsme.letitgo.personal.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.scout.model.dto.MemNoAndResumeNoDTO;
import com.itsme.letitgo.personal.scout.model.dto.ReadingResumeListOfPersonalDTO;
import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.mapper.PersonalScoutMapper;

public class PersonalScoutService {

	public int updateScoutStatus(MemNoAndResumeNoDTO mr) {

		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int result = mapper.updateScoutStatus(mr);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<ResumeDTO> selectResume(int memberNo) {

		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		List<ResumeDTO> resumeList = mapper.selectResume(memberNo);
		
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

	public int selectAllCountSimpeOpen(int memNo) {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int simpleOpen = mapper.selectAllCountSimpeOpen(memNo);
		
		session.close();
		
		return simpleOpen;
	}

	public int selectAllCountDeepOpen(int memNo) {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int deepOpen = mapper.selectAllCountDeepOpen(memNo);
		
		session.close();
		
		return deepOpen;
	}

	public int selectAllScountNum(int memNo) {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int scoutNum = mapper.selectAllScountNum(memNo);
		
		session.close();
		
		return scoutNum;
	}

	

	
	
	

}
