package com.itsme.letitgo.personal.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.BookmarkDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpResumeDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectApplyingYnDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectRequestJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.mapper.SelectJobPostingMapper;

public class SelectJobPostingService {

	public Map<String, List<Object>> selectJobPosting(SelectRequestJobPostingDTO dto) {

		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		/* 현재 채용중인 공고 그리고 기업정보에 대한 내용 select */
		List<Object> jpAndInfo = mapper.selectJobPosting(dto);
		
		/* 공고별 스킬을 보여주기 위해 스킬 select */
		List<Object> jpSkills = mapper.selectJpSkills();
		
		/* 공고 조회시 조건 검색을 위해 옵션에 넣어줄 직무 조회 */
		List<Object> jobNameList = mapper.selectJobNames();

		
		Map<String, List<Object>> jp = new HashMap<>();
		jp.put("jpAndInfo", jpAndInfo);
		jp.put("jpSkills", jpSkills);
		jp.put("jobNameList", jobNameList);
		
		session.close();
		
		return jp;
		
	}
	
	public int selectJpTotalCount(SelectRequestJobPostingDTO dto) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		int totlaCount = mapper.selectJpTotalCount(dto);
		
		session.close();
		return totlaCount;
	}


	public Map<String, Object> selectDetailedJobPosting(int selectJobPostNo) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		/* mapper에서 채용공고, 공고별 스킬, 대표이미지 경로, 로고이미지 경로 조회 */
		SelectJobPostingDTO detailedJobPosting = mapper.selectDetailedJobPosting(selectJobPostNo);
		List<Object> deteildeJpSkills = mapper.selectDeteildeJpSkills(selectJobPostNo);
		String titleFilePath = mapper.selectTitleFilePath(selectJobPostNo);
		String logoFilePath = mapper.selectLogoFilePath(selectJobPostNo);
		
		/* 선택한 공고 정보와 공고의 요구 스킬을 담아줄 Map 인스턴스 생성 */
		Map<String, Object> jp = new HashMap<>();
		jp.put("detailedJobPosting", detailedJobPosting);
		jp.put("deteildeJpSkills", deteildeJpSkills);
		jp.put("titleFilePath", titleFilePath);
		jp.put("logoFilePath", logoFilePath);
	
		session.close();
		
		return jp;
	}

	public SelectApplyingYnDTO selectApplyingHistory(SelectApplyingYnDTO dto) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		/* 공고에 대한 지원 여부 조회 */
		SelectApplyingYnDTO applyingResult = mapper.selectApplyingHistory(dto);
		
		session.close();
		
		return applyingResult;
	}

	public List<JpResumeDTO> selectResumeForApplying(int inMemNo) {

		SqlSession session = getSqlSession();		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<JpResumeDTO> resumeList = mapper.selectResumeForApplying(inMemNo);
		
		System.out.println("resumeForApplying resumeList : " + resumeList);
		
		session.close();
		return resumeList;
	}

	public int insertBookmark(BookmarkDTO bm) {

		SqlSession session = getSqlSession();
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		int result = mapper.insertBookmark(bm);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();

		return result;
	}

	public List<BookmarkDTO> selectBookmark(int inMemNo) {

		SqlSession session = getSqlSession();
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<BookmarkDTO> bookmarkList = mapper.selectBookmark(inMemNo);
		
		session.close();
		
		return bookmarkList;
	}

	public int deleteBookmark(BookmarkDTO deleteBm) {
		
		SqlSession session = getSqlSession();
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		int result = mapper.deleteBookmark(deleteBm);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}




}
