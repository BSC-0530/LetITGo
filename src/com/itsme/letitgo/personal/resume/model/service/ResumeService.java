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

	public int insertDetailResume(InsertResumeDTO ir) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
//		int resultResume = mapper.insertResume(irList);
		int resultCareer = mapper.insertCareer(ir);
		int resultPot = mapper.insertPot(ir);
//		int resultIntroNo = mapper.insertIntroNo(irList);
		int resultIntroContent = mapper.insertIntroContent(ir);
		int resultLicense = mapper.insertLicense(ir);
		int resultEdu = mapper.insertEdu(ir);
		int resultAwd = mapper.insertAwd(ir);
		
		int result = resultCareer + resultPot  
				+ resultIntroContent + resultLicense + resultEdu + resultAwd;
		
		if(result > 5) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int selectResume(String resumeTitle) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int resumeNo = mapper.selectResume(resumeTitle);
		
		session.close();
		
		return resumeNo;
	}

	public int insertResume(InsertResumeDTO ir) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int result = mapper.insertResume(ir);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int updateDetailResume(InsertResumeDTO ir) {

		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int resultResume = mapper.updateResume(ir);
		int resultCareer = mapper.updateCareer(ir);
		int resultPot = mapper.updatePot(ir);
//		int resultIntroNo = mapper.insertIntroNo(irList);
		int resultIntroContent = mapper.updateIntroContent(ir);
		int resultLicense = mapper.updateLicense(ir);
		int resultEdu = mapper.updateEdu(ir);
		int resultAwd = mapper.updateAwd(ir);
		
		int result = resultCareer + resultPot + resultResume
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
