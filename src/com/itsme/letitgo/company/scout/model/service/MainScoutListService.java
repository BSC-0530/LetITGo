package com.itsme.letitgo.company.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.CandidateRegisterSkillsDTO;
import com.itsme.letitgo.company.scout.model.dto.CandidateRegistrationDTO;
import com.itsme.letitgo.company.scout.model.dto.DeliverCareerAndSkillDTO;
import com.itsme.letitgo.company.scout.model.dto.InterviewProposalDTO;
import com.itsme.letitgo.company.scout.model.dto.NameAndResumeDTO;
import com.itsme.letitgo.company.scout.model.dto.PersonalBrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;
import com.itsme.letitgo.personal.resume.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.ItemAndContentDTO;
import com.itsme.letitgo.personal.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.personal.resume.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.PortfolioDTO;
import com.itsme.letitgo.personal.resume.model.dto.SkillsDTO;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;
import com.itsme.letitgo.personal.scout.model.mapper.PersonalScoutMapper;


public class MainScoutListService {

	public Map<String, Object> selectAllScoutList()  {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		//이름  사진 
		List<Object> scoutListName = mapper.companySelectAllScout();
		//기술
		List<Object> scoutListSkills = mapper.companyScoutSkills();
		//경력
		List<Object> scoutCareea = mapper.companyScoutCareea();
	
		System.out.println("sadasdasdaskjdhasdka : " + scoutCareea);
		
		Map<String, Object> scoutList = new HashMap<>();
			
		scoutList.put("scoutListName",scoutListName);
		scoutList.put("scoutListSkills", scoutListSkills);
		scoutList.put("scoutCareea", scoutCareea );
			
		System.out.println("스킬확인 : " + scoutCareea);
	
		session.close();
		 
		return scoutList;
	}
//간단열람 
	public Map<String, Object> browseSelectInfo(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<BrosweSimplelDTO> brosweSimplelDTO = mapper.browseSelectInfo(onClickResumeNo);
		
		List<Object> browseSkills = mapper.companyScoutSkills();
		
		List<Integer> careeaNumber = mapper.careeaNumber(onClickResumeNo);
		

		for(BrosweSimplelDTO a : brosweSimplelDTO) {
			System.out.println(a);
		}
		Map<String,Object> simpleInfo =  new HashMap<>();
		
		if(brosweSimplelDTO.size() != 0) {
			String browseName = (brosweSimplelDTO.get(0).getMemDTO().get(0).getMemName()).toString();
			String path = brosweSimplelDTO.get(0).getPath();
			simpleInfo.put("browseName", browseName);
			simpleInfo.put("path", path);
		}
		if(brosweSimplelDTO.size() != 0) {
			String jobName = (brosweSimplelDTO.get(0).getJobFieldDTO().get(0).getJobName()).toString();			
			simpleInfo.put("jobName", jobName);
		}
		if(brosweSimplelDTO.size() != 0) {
			int number = (brosweSimplelDTO.get(0).getResumeNo());			
			simpleInfo.put("number",number);
		}
		if(browseSkills != null) {
			simpleInfo.put("browseSkills", browseSkills);			
		}
		if(careeaNumber != null) {
			simpleInfo.put("careeaNumber", careeaNumber);			
		}
		
		
		session.close();
		
		return simpleInfo;
	}
	//구분 조회
	public int readingKindsInsert(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.readingKindsInsert(onClickResumeNo);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}
	
	
//	스카우트 현황 데이터테이블조회
	public List<BrosweHistoryDTO> selectBrowseUsingHistroy(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		 List<BrosweHistoryDTO>  selectBrowseUsingHistroy = mapper.selectBrowseUsingHistroy(memNo);
		 
		 
//		 System.out.println("ASDKJAHSDKJ" + selectBrowseUsingHistroy);
		 session.close();
		
		return selectBrowseUsingHistroy;
	}
	
	public List<ResumeReadingHistoryDTO>  brosweHistoryKindsSelect(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<ResumeReadingHistoryDTO> kinds = mapper.brosweHistoryKindsSelect(onClickResumeNo);
		
		System.out.println("ASJDHKASJDAJDKJAS" + kinds);
		
		session.close();

		return kinds;
	}
	
	
	public int upDateTime(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.updateTime(onClickResumeNo);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();

		return result;
		
	}
	
	//얕은열람카운트
	public int selectAllCountDeepOpen(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllCountDeepOpen(memNo);
		

		session.close();

		
		return CountNum;
	}
	//깊은열람카운트
	public int selectAllCountSimpeOpen(int memNo) {
		
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllCountSimpleOpen(memNo);
		

		session.close();

		
		return CountNum;
	}
	
	//면접제안 카운트
	public int selectAllScountNum(int memNo) {
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllScountNum(memNo);
		

		session.close();

		
		return CountNum;
	}
	
	public List<PersonalBrosweHistoryDTO> personalBrosweSelect() {
		
		 SqlSession session = getSqlSession();
		
		 
		 
		 CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		 List<PersonalBrosweHistoryDTO>  personalBrosweHistorySelect = mapper.personalBrosweHistorySelect();
		 
		 System.out.println("개인마이페이지개인마이페이지개인마이페이지" + personalBrosweHistorySelect);
		 
		 session.close();
		
		return personalBrosweHistorySelect;
		
		
	}

	// 상세이력서 열람(깊은열람)
	public Map<String, Object> selectDetailResume(int resumeNo) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		Map<String, Object> detailMap = new HashMap<>();
		
		List<NameAndResumeDTO> detailResume = mapper.selectDetailResume(resumeNo);
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
	
	// 면접 제안
	public int insertInterview(InterviewProposalDTO memNos) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.insertInterview(memNos);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	
	
	public int insertNewKinds(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.insertNewKinds(onClickResumeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	public int updateDetailStatus(int resumeNo) {
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.updateDetailStatus(resumeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return 0;
	}
	public int selectSimpleCount() {
		
		SqlSession session = getSqlSession();
		PersonalScoutMapper mapper = session.getMapper(PersonalScoutMapper.class);
		
		int result = mapper.selectSimpleCount();
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return 1;
	}
	public int insertWishList(int resumeNo) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.insertWishList(resumeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	// 찜하기 조회(회원 정보)
	public List<CandidateRegistrationDTO> selectWishInfoList() {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<CandidateRegistrationDTO> wishInfoList = mapper.selectWishInfoList();
		
		session.close();

		return wishInfoList;
	}
	
	// 찜하기 조회(보유 기술)
	public List<CandidateRegisterSkillsDTO> selectWishSkillsList(int resumeNo) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<CandidateRegisterSkillsDTO> wishSkillList = mapper.selectWishSkillsList(resumeNo);
		
		session.close();
		
		return wishSkillList;
	}
	
	public int deleteWishList(int resumeNo) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int result = mapper.deleteWishList(resumeNo);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
	
	public List<SkillsDTO> selectSkillsName(String term) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<SkillsDTO> skillsList = mapper.selectSkillsName(term);
		
		session.close();
		
		return skillsList;
	}
	
	// 정렬조회(스킬만)
	public Map<String, Object> selectBySkillScoutList(String inputSkill) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<Object> selectedScoutListInName = mapper.selectedBySkillScoutListInName(inputSkill);
		List<Object> selectedScoutListInSkills = mapper.selectedBySkillScoutListInSkills(inputSkill);
		List<Object> selectedScoutListInCareer = mapper.selectedBySkillScoutListInCareer(inputSkill);
		
		System.out.println("service sort name : " + selectedScoutListInName);
		System.out.println("service sort skill : " + selectedScoutListInSkills);
		System.out.println("service sort career : " + selectedScoutListInCareer);
		
		Map<String, Object> selectedBySkillScoutList = new HashMap<>();
		
		selectedBySkillScoutList.put("selectedScoutListInName",selectedScoutListInName);
		selectedBySkillScoutList.put("selectedScoutListInSkills", selectedScoutListInSkills);
		selectedBySkillScoutList.put("selectedScoutListInCareer", selectedScoutListInCareer );
		
		session.close();
		
		return selectedBySkillScoutList;
		
//		List<Object> scoutListName = mapper.companySelectAllScout();
//		
//		List<Object> scoutListSkills = mapper.companyScoutSkills();
//		
//		List<Object> scoutCareea = mapper.companyScoutCareea();
	}
	
	// 정렬조회(경력만)
	public Map<String, Object> selectedByCareerScoutList(int inputCareer) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		Map<String, Object> selectedByCarScoutList = new HashMap<>();
		
		List<Object> selectedByCarScoutListInName = mapper.selectedByCarScoutListInName(inputCareer);
		List<Object> selectedByCarScoutListInSkills = mapper.selectedByCarScoutListInSkills(inputCareer);
		
		if(inputCareer == 1) {
			List<Object> selectedByCarScoutListInCareer = mapper.selectedByCarScoutListInCareer(inputCareer);			
			selectedByCarScoutList.put("selectedByTwoScoutListInCareer", selectedByCarScoutListInCareer);
		}
		
		selectedByCarScoutList.put("selectedByTwoScoutListInName", selectedByCarScoutListInName);
		selectedByCarScoutList.put("selectedByTwoScoutListInSkills", selectedByCarScoutListInSkills);
		
		session.close();
		
		return selectedByCarScoutList;
	}
	
	// 정렬조회(스킬/경력)
	public Map<String, Object> selectedByTwoScoutList(DeliverCareerAndSkillDTO selectedCareerAndSkill) {
		
		SqlSession session = getSqlSession();
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		Map<String, Object> selectedByTwoScoutList = new HashMap<>();
		
		List<Object> selectedByTwoScoutListInName = mapper.selectedByTwoScoutListInName(selectedCareerAndSkill);
		List<Object> selectedByTwoScoutListInSkills = mapper.selectedByTwoScoutListInSkills(selectedCareerAndSkill);
		List<Object> selectedByTwoScoutListInCareer = mapper.selectedByTwoScoutListInCareer(selectedCareerAndSkill);
		
		selectedByTwoScoutList.put("selectedByTwoScoutListInName", selectedByTwoScoutListInName);
		selectedByTwoScoutList.put("selectedByTwoScoutListInSkills", selectedByTwoScoutListInSkills);
		selectedByTwoScoutList.put("selectedByTwoScoutListInCareer", selectedByTwoScoutListInCareer);
		
		session.close();
		
		return selectedByTwoScoutList;
	}
		

//	public List<SkillsAndCategoryDTO> skillsSelect() {
//		
//		
//		SqlSession session = getSqlSession();
//		 
//		 CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
//		 
//		 List<SkillsAndCategoryDTO> skillsSelect = mapper.skillsSelect();
//		 
//		System.out.println("!@@@@@@@@@@@#@##@@" + skillsSelect);
//		session.close();
//		
//		return skillsSelect;
//	}

	
	
	
}



















