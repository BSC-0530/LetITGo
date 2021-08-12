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

	public int insertResume(DetailResumeDTO dr) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		System.out.println(dr);
		
		int result = 0;
		
		int resultResume = mapper.insertResume(dr);
		int resultCareer = mapper.insertCareer(dr);
		int resultPortfolio = mapper.insertPort(dr);
		int resultIntro = mapper.insertIntro(dr);
		int resultLicense = mapper.insertLicense(dr);
		int resultEdu = mapper.insertEdu(dr);
		int resultAwd = mapper.insertAwd(dr);
		
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

}
