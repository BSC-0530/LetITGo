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

import com.itsme.letitgo.company.scout.model.mapper.CompanyScoutMapper;

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
			
			
		 session.close();
		 
		return scoutList;
	}
}
