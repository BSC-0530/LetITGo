package com.itsme.letitgo.company.scout.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.StringTokenizer;
import java.util.stream.Collectors;

import org.apache.ibatis.javassist.bytecode.Descriptor.Iterator;
import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.dto.BrosweSimplelDTO;
import com.itsme.letitgo.company.scout.model.dto.CompanyCareerHistoryDTO;
import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;
import com.itsme.letitgo.personal.resume.model.dto.SkillsAndCategoryDTO;

public class MainScoutListService {

	public Map<String, List<Object>> selectAllScoutList()  {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<Object> scoutListName = mapper.companySelectAllScout();
		
		List<Object> scoutListSkills = mapper.companyScoutSkills();
		
		List<Object> scoutCareea = mapper.companyScoutCareea();
		
		System.out.println("sadasdasdaskjdhasdka : " + scoutCareea);
		
			HashMap<String,List<Object>> scoutList = new HashMap<>();
			
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
		
//		for(int i = 0; i < brosweSimplelDTO.size(); i++) {
//			
//			System.out.println(")(*!)@(*#)(!"  + brosweSimplelDTO.get(i).getCompanyCareerHistoryDTO().get(0));
//			
//		}
//		CompanyCareerHistoryDTO browseCareer = (brosweSimplelDTO.get(i).getCompanyCareerHistoryDTO().get(0));
		
		
		
		
		Map<String,Object> simpleInfo =  new HashMap<>();
		simpleInfo.put("browseName", browseName);
		simpleInfo.put("jobName", jobName);
		simpleInfo.put("browseSkills", browseSkills);
		
//		simpleInfo.put("browseCareer", brosweSimplelDTO);
		simpleInfo.put("careeaNumber", careeaNumber);
		
		session.close();
		
		return simpleInfo;
	}
}



















