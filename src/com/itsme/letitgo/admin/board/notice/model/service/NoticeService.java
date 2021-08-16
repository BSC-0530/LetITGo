package com.itsme.letitgo.admin.board.notice.model.service;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.mapper.NoticeMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


public class NoticeService {

	public List<PersonalInfoPolicyDTO> NoticeAllSelected() {
			
		SqlSession session = getSqlSession();
		
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		
		List<PersonalInfoPolicyDTO> noticeList = mapper.noticeAllSelected();
		
		session.close();
		
		return noticeList;

	}

	public static int noticeInsert(PersonalInfoPolicyDTO notice) {
		
		SqlSession session = getSqlSession();
		
		NoticeMapper mapper = session.getMapper(NoticeMapper.class);
		
		int result = mapper.noticeInsert(notice);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
}
