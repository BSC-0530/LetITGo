package com.itsme.letitgo.member.board.notice.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.member.board.notice.model.dto.GuideLineDTO;
import com.itsme.letitgo.member.board.notice.model.mapper.GuideLineMapper;

public class GuideLineService {

	public List<GuideLineDTO> selectAllGuideLineList() {

		SqlSession session = getSqlSession();
		
		GuideLineMapper guideLineMapper = session.getMapper(GuideLineMapper.class);
		
		List<GuideLineDTO> guideLineList = guideLineMapper.selectAllGuideLineList();
		
		session.close();
		
		return guideLineList;
	}

	public GuideLineDTO selectDetail(int postNo) {

		SqlSession session = getSqlSession();
		
		GuideLineMapper mapper = session.getMapper(GuideLineMapper.class);
		
		GuideLineDTO detailList = mapper.selectDetail(postNo);
		
		//확인
		System.out.println("detailList : " + detailList);
		
		session.close();
		
		return detailList;
		
	}

}











