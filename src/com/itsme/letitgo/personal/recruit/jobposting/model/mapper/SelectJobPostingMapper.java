package com.itsme.letitgo.personal.recruit.jobposting.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.BookmarkDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpResumeDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectApplyingYnDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectRequestJobPostingDTO;

public interface SelectJobPostingMapper {
	
	List<Object> selectJobPosting(SelectRequestJobPostingDTO dto);

	List<Object> selectJpSkills();

	List<Object> selectJobNames();
	
	List<Object> selectSkills();

	SelectJobPostingDTO selectDetailedJobPosting(int selectJobPostNo);

	List<Object> selectDeteildeJpSkills(int selectJobPostNo);

	SelectApplyingYnDTO selectApplyingHistory(SelectApplyingYnDTO dto);

	List<JpResumeDTO> selectResumeForApplying(int inMemNo);

	int insertApplyngHistory(Map<String, Object> applyMap);

	int insertApplyingChangeHistory(Map<String, Object> applyMap);

	int insertBookmark(int jobPostNo);

	List<BookmarkDTO> selectBookmark(int inMemNo);

	int deleteBookmark(BookmarkDTO deleteBm);


	int selectJpTotalCount(SelectRequestJobPostingDTO dto);


	String selectTitleFilePath(int selectJobPostNo);


	String selectLogoFilePath(int selectJobPostNo);



}
