package com.itsme.letitgo.personal.resume.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.dto.NameAndResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ItemAndContentDTO;
import com.itsme.letitgo.personal.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.personal.resume.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.PortfolioDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.personal.resume.model.mapper.ResumeMapper;

public class ResumeService {

	public List<ResumeDTO> selectAllResumeList(int memberNo) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		List<ResumeDTO> resumeList = mapper.selectAllResumeList(memberNo);
		
		session.close();
		
		return resumeList;
	}

	public Map<String, Object> selectDetailResumeList(int resumeNo) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		Map<String, Object> detailMap = new HashMap<>();
		
		List<ResumeDTO> detailResume = mapper.selectDetailResume(resumeNo);
		List<JobFieldDTO> detailJobField = mapper.selectDetailJobField(resumeNo);
		List<CareerHistoryDTO> detailCareer = mapper.selectDetailCareer(resumeNo);
		List<SkillsDTO> detailSkills = mapper.selectDetailSkills(resumeNo);
		List<ItemAndContentDTO> detailIntroContent = mapper.selectDetailContent(resumeNo);
		List<AwardHistoryDTO> detailAward = mapper.selectDetailAward(resumeNo);
		List<EducationHistoryDTO> detailEdu = mapper.selectDetailEdu(resumeNo);
		List<LicenseHistoryDTO> detailLicense = mapper.selectDetailLicense(resumeNo);
		List<PortfolioDTO> detailPot = mapper.selectDetailPot(resumeNo);
		
		System.out.println("service detailResume : " + detailResume);
		System.out.println("service detailCareer : " + detailCareer);
		System.out.println("service detailSkills : " + detailSkills);
		System.out.println("service detailIntroContent : " + detailIntroContent);
		System.out.println("service detailAward : " + detailAward);
		System.out.println("service detailEdu : " + detailEdu);
		System.out.println("service detailLicense : " + detailLicense);
		System.out.println("service detailJobField : " + detailJobField);
		System.out.println("service detailPot : " + detailPot);
		
		detailMap.put("detailResume", detailResume);
		detailMap.put("detailCareer", detailCareer);
		detailMap.put("detailSkills", detailSkills);
		detailMap.put("detailIntroContent", detailIntroContent);
		detailMap.put("detailAward", detailAward);
		detailMap.put("detailEdu", detailEdu);
		detailMap.put("detailLicense", detailLicense);
		detailMap.put("detailJobField", detailJobField);
		detailMap.put("detailPot", detailPot);
		
		
		
		session.close();
		
		return detailMap;
	}

	public int insertDetailResume(InsertResumeDTO ir) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int resultCareer = mapper.insertCareer(ir);
		int resultPot = mapper.insertPot(ir);
		int resultIntroContent = mapper.insertIntroContent(ir);
		int resultLicense = mapper.insertLicense(ir);
		int resultEdu = mapper.insertEdu(ir);
		int resultAwd = mapper.insertAwd(ir);
		int resultSkill = mapper.insertSkill(ir);
		
		int result = resultCareer + resultPot  
				+ resultIntroContent + resultLicense + resultEdu + resultAwd + resultSkill;
		
		if(result > 6) {
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

	public int deleteResume(int resumeNo) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		int resultAwd = mapper.deleteAwd(resumeNo);
		int resultLicense = mapper.deleteLicense(resumeNo);
		int resultIntroContent = mapper.deleteIntroContent(resumeNo);
		int resultPot = mapper.deletePot(resumeNo);
		int resultEdu = mapper.deleteEdu(resumeNo);
		int resultCareer = mapper.deleteCareer(resumeNo);
		int resultSkills = mapper.deleteSkills(resumeNo);
		int resultResume = mapper.deleteResume(resumeNo);
		
		int result = resultAwd + resultCareer + resultEdu
				+ resultIntroContent + resultLicense + resultPot + resultResume + resultSkills;
		
		if(result > 7) {
			session.commit();			
		} else {
			session.rollback();
		}
	
		session.close();
		
		return result;
		
	}

	public List<DetailResumeDTO> selectDetailResumeListforUpdate(int resumeNo) {
		
		SqlSession session = getSqlSession();
		ResumeMapper mapper = session.getMapper(ResumeMapper.class);
		
		List<DetailResumeDTO> detailList = mapper.selectDetailResumeListforUpdate(resumeNo);
		
		session.close();
		
		return detailList;
	}

	

}
