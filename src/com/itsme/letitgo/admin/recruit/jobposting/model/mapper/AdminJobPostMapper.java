package com.itsme.letitgo.admin.recruit.jobposting.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;

public interface AdminJobPostMapper {

	List<PostInsertRuqeustDTO> selectPostRequest();

	int updatePostRequestApp1(int jobPostNo);

	int updatePostRequestApp2(int jobPostReqNo);

}
