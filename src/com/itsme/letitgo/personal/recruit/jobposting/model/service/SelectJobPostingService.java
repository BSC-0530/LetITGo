package com.itsme.letitgo.personal.recruit.jobposting.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

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

	public Map<String, List<Object>> selectAllJobPosting() {

		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<Object> jpAndInfo = mapper.selectAllJobPosting();
		
		List<Object> jpSkills = mapper.selectJpSkills();
		
		List<Object> jobNameList = mapper.selectJobNames();
		
		List<Object> skillsList = mapper.selectSkills();
		System.out.println(jobNameList);
		
		Map<String, List<Object>> jp = new HashMap<>();
		jp.put("jpAndInfo", jpAndInfo);
		jp.put("jpSkills", jpSkills);
		jp.put("jobNameList", jobNameList);
		jp.put("skillsList", skillsList);
		
		System.out.println("service jpAndInfo : " + jpAndInfo);
		session.close();
		
		return jp;
	}

	public Map<String, Object> selectDetailedJobPosting(int selectJobPostNo) {
		
		SqlSession session = getSqlSession();
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		// 선택한 공고 정보와 공고의 요구 스킬을 담아줄 Map 인스턴스 생성
		Map<String, Object> jp = new HashMap<>();
		
		// 조회 후 값을 변수에 담음
		SelectJobPostingDTO detailedJobPosting = mapper.selectDetailedJobPosting(selectJobPostNo);
		List<Object> deteildeJpSkills = mapper.selectDeteildeJpSkills(selectJobPostNo);
		
		
		// return값으로 넘겨주기 위해 map에 담기 
		
		jp.put("detailedJobPosting", detailedJobPosting);
		jp.put("deteildeJpSkills", deteildeJpSkills);
		
	
		session.close();
		
		return jp;
	}

	public SelectApplyingYnDTO selectApplyingHistory(SelectApplyingYnDTO dto) {
		
		
		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		dto = mapper.selectApplyingHistory(dto);
		
		
		System.out.println("applying service : " +  dto);
		
		session.close();
		
				
		
		// 반환받은 dto가 null일 경우 0 null이 아닐경우 1반환
		return dto;
	}

	public List<JpResumeDTO> selectResumeForApplying(int inMemNo) {

		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<JpResumeDTO> resumeList = mapper.selectResumeForApplying(inMemNo);
		
		System.out.println("resumeForApplying resumeList : " + resumeList);
		
		session.close();
		return resumeList;
	}

	public int insertBookmark(int jobPostNo) {

		SqlSession session = getSqlSession();
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		int result = mapper.insertBookmark(jobPostNo);
		
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

	public Map<String, List<Object>> selectOptionJobPosting(SelectRequestJobPostingDTO dto) {

		SqlSession session = getSqlSession();
		
		
		SelectJobPostingMapper mapper = session.getMapper(SelectJobPostingMapper.class);
		
		List<Object> jpAndInfo = mapper.selectOptionJobPosting(dto);
		
		List<Object> jpSkills = mapper.selectJpSkills();
		
		List<Object> jobNameList = mapper.selectJobNames();
		
		List<Object> skillsList = mapper.selectSkills();
		System.out.println(jobNameList);
		
		Map<String, List<Object>> jp = new HashMap<>();
		jp.put("jpAndInfo", jpAndInfo);
		jp.put("jpSkills", jpSkills);
		jp.put("jobNameList", jobNameList);
		jp.put("skillsList", skillsList);
		
		System.out.println("service jpAndInfo : " + jpAndInfo);
		session.close();
		
		return jp;
		
	}



}
