package com.itsme.letitgo.admin.recruit.jobposting.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;

public interface AdminJobPostMapper {

	List<PostInsertRuqeustDTO> selectPostRequest();

	int updatePostRequestApp1(int jobPostNo);

	int updatePostRequestApp2(int jobPostReqNo);

	int updatePostRejectRequest1(Map<String, Object> map);

	int updatePostRejectRequest2(Map<String, Object> map);

	List<PostInsertRuqeustDTO> selectPostInsertUpdate();

	int updatePostUpdateApp1(int jobPostNo);
	
	int updatePostUpdateApp2(int jobPostReqNo);

	int updatePostUpdateRejectRequest1(Map<String, Object> map);

	int updatePostUpdateRejectRequest2(Map<String, Object> map);


}
