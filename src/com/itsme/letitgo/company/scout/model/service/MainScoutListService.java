package com.itsme.letitgo.company.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.CountReadingNumDTO;
import com.itsme.letitgo.company.scout.model.dto.PersonalBrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.ResumeReadingHistoryDTO;
import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;

public class MainScoutListService {

	public Map<String, Object> selectAllScoutList()  {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<Object> scoutListName = mapper.companySelectAllScout();
		
		List<Object> scoutListSkills = mapper.companyScoutSkills();
		
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
		
		List<BrosweSimplelDTO> brosweSimplelDTO =mapper.browseSelectInfo(onClickResumeNo);
//		List<Object> brosweSimplelDTO =mapper.browseSelectInfo(onClickResumeNo);
		
		List<Object> browseSkills = mapper.companyScoutSkills();
		
		List<Integer> careeaNumber = mapper.careeaNumber(onClickResumeNo);
		
		System.out.println("@@@@@@@@@@@@@@@@" + careeaNumber);
		
		String browseName = (brosweSimplelDTO.get(0).getMemDTO().get(0).getMemName()).toString();
		String jobName = (brosweSimplelDTO.get(0).getJobFieldDTO().get(0).getJobName()).toString();
		int number = (brosweSimplelDTO.get(0).getResumeNo());	
//		System.out.println("browseSkills" + browseSkills.get(1));
		
		Map<String,Object> simpleInfo =  new HashMap<>();
		simpleInfo.put("browseName", browseName);
		simpleInfo.put("jobName", jobName);
		simpleInfo.put("browseSkills", browseSkills);
		
//		simpleInfo.put("browseCareer", brosweSimplelDTO);
		simpleInfo.put("careeaNumber", careeaNumber);
		simpleInfo.put("number",number);
		
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
	public static List<BrosweHistoryDTO> selectBrowseUsingHistroy() {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		 List<BrosweHistoryDTO>  selectBrowseUsingHistroy = mapper.selectBrowseUsingHistroy();
		 
		 
		 System.out.println("ASDKJAHSDKJ" + selectBrowseUsingHistroy);
		 session.close();
		
		return selectBrowseUsingHistroy;
	}
	
	public ResumeReadingHistoryDTO  brosweHistoryKindsSelect(int onClickResumeNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		ResumeReadingHistoryDTO  kinds = mapper.brosweHistoryKindsSelect(onClickResumeNo);
		
		System.out.println("ASJDHKASJDAJDKJAS" + kinds);
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
	public int selectAllCountDeepOpen() {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllCountDeepOpen();
		
		
		return CountNum;
	}
	//깊은열람카운트
	public int selectAllCountSimpeOpen() {
		
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllCountSimpleOpen();
		
		
		return CountNum;
	}
	//면접제안 카운트
	public int selectAllScountNum() {
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		int CountNum = mapper.selectAllScountNum();
		
		
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
	
	
	
}



















