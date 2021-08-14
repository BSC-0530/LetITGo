package com.itsme.letitgo.company.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.dto.BrosweHistoryDTO;
import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.CountReadingNumDTO;
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
			
			System.out.println("스킬확인 : " + scoutListSkills);
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
		
		System.out.println("@@@@@@@@@@@@@@@@" + brosweSimplelDTO);
		
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
	
	
	
	
	public static List<BrosweHistoryDTO> selectBrowseUsingHistroy() {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		 List<BrosweHistoryDTO>  selectBrowseUsingHistroy = mapper.selectBrowseUsingHistroy();
		 
		 
		 
		 session.close();
		
		return selectBrowseUsingHistroy;
	}
	
	
	
}



















