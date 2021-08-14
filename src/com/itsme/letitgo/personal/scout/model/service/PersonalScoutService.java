package com.itsme.letitgo.personal.scout.model.service;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.mapper.PersonalScoutMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

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
	
	

}
