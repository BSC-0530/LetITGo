package com.itsme.letitgo.admin.resume.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;
import com.itsme.letitgo.admin.resume.model.mapper.SelfIntroductionItemMapper;

public class SelfIntroductionItemService {

	public int selfIntroductionItemInsert(SelfIntroductionItemDTO requestSelfIntroductionItem) {

		SqlSession session = getSqlSession();
		
		SelfIntroductionItemMapper selfIntroductionItemMapper = session.getMapper(SelfIntroductionItemMapper.class);
		
		int result = selfIntroductionItemMapper.selfIntroductionItemInsert(requestSelfIntroductionItem);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		return result;
		
	}

	public List<SelfIntroductionItemDTO> selectAllSelfIntroductionItemList() {
		
		SqlSession session = getSqlSession();
		
		SelfIntroductionItemMapper selfIntroductionItemMapper = session.getMapper(SelfIntroductionItemMapper.class);
		
		List<SelfIntroductionItemDTO> selfIntroductionItemList = selfIntroductionItemMapper.selectAllSelfIntroductionItemList();
		
		session.close();
		
		return selfIntroductionItemList;
		
	}
	
}


