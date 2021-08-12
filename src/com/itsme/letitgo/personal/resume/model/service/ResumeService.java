package com.itsme.letitgo.personal.resume.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
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

	public int insertResume(List<InsertResumeDTO> irList) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int resultResume = mapper.insertResume(irList);
		int resultCareer = mapper.insertCareer(irList);
		int resultPot = mapper.insertPot(irList);
//		int resultIntroNo = mapper.insertIntroNo(irList);
		int resultIntroContent = mapper.insertIntroContent(irList);
		int resultLicense = mapper.insertLicense(irList);
		int resultEdu = mapper.insertEdu(irList);
		int resultAwd = mapper.insertAwd(irList);
		
		int result = resultResume + resultCareer + resultPot  
				+ resultIntroContent + resultLicense + resultEdu + resultAwd;
		
		if(result > 6) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	

}
