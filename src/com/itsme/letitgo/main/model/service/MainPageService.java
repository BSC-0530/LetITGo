package com.itsme.letitgo.main.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.main.model.dto.JpSkillsDTO;
import com.itsme.letitgo.main.model.dto.PremiumRecruitDTO;
import com.itsme.letitgo.main.model.mapper.MainPageMapper;

public class MainPageService {

	public Map<String, Object> selectPremiumRecruit() {
		
		SqlSession session = getSqlSession();
		
		MainPageMapper mapper = session.getMapper(MainPageMapper.class);
		
		/* 노출권 이용 공고 조회와 스킬 리스트 조회 */
		List<PremiumRecruitDTO> premiumRecruitList = mapper.selectPremiumRecruit();
		List<JpSkillsDTO> skillsList = mapper.selectSkillsList();
		
		/* map에 담아서 전달*/
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("premiumRecruitList", premiumRecruitList);
		resultMap.put("skillsList", skillsList);
		
		return resultMap;
	}

}
