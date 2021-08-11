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

import org.apache.ibatis.javassist.bytecode.Descriptor.Iterator;
import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;

public class MainScoutListService {

	public Map<String, List<Object>> selectAllScoutList() {
		
		SqlSession session = getSqlSession();
		
		CompanyScoutMapper mapper = session.getMapper(CompanyScoutMapper.class);
		
		List<Object> scoutListName = mapper.companySelectAllScout();
		
		List<Object> scoutListSkills = mapper.companyScoutSkills();
		
		HashMap<String,Object> scoutCareea = mapper.companyScoutCareea();
		
		
//		System.out.println("@@@@@@@@@@@@@@@" );
//		 for(String key : scoutCareea.keySet()) {
//	            System.out.println(key);
//	        }
//		 for(Entry<String, Object> entry : scoutCareea.entrySet()) {
//	            System.out.println("밸류값 : " +  entry.getValue());
//	            
//	        }
		 String hireDate = scoutCareea.get("CAR_HIRE_DATE").toString();
		 String entDate = scoutCareea.get("CAR_ENT_DATE").toString();
		 
		 System.out.println("Tlqkfskdhkfk : " + hireDate);
		 System.out.println("Tlqkfskdhkfk : " + entDate);
		
		 java.sql.Date date1 = java.sql.Date.valueOf(hireDate);
		 java.sql.Date date2 = java.sql.Date.valueOf(entDate);
		 
		 
		 
		System.out.println("aASD!@#!@#!@#!@#!# : " + date1);
		
		
		
		Map<String,List<Object>> scoutList = new HashMap<>();
		scoutList.put("scoutListName",scoutListName);
		scoutList.put("scoutListSkills", scoutListSkills);
//		scoutList.put("scoutCareea", );
		
		
		
		
		session.close();
		
		return scoutList;
	}

}
