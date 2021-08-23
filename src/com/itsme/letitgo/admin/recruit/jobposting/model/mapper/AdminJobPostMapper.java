package com.itsme.letitgo.admin.recruit.jobposting.model.mapper;

import java.util.List;
import java.util.Map;

import com.itsme.letitgo.admin.recruit.jobposting.model.dto.PostInsertRuqeustDTO;

public interface AdminJobPostMapper {

	/* 공고등록요청 리스트 조회 */
	List<PostInsertRuqeustDTO> selectPostRequest();

	/* 채용공고의 분류를 승인된 공고로 변경 */
	int updatePostRequestApp1(int jobPostNo);

	/* 채용공고 승인여부이력 응답구분을 승인으로 변경 */
	int updatePostRequestApp2(int jobPostReqNo);

	/* 채용공고의 분류를 거절된 공고로 변경 */
	int updatePostRejectRequest1(Map<String, Object> map);

	/* 채용공고 승인여부이력 응답구분을 거절로 변경 */
	int updatePostRejectRequest2(Map<String, Object> map);

	/* 공고수정요청 리스트 조회 */
	List<PostInsertRuqeustDTO> selectPostInsertUpdate();

	/* 요청번호를 통해서 수정전 채용공고번호를 가져옴 */
	int selectChangeReqJobPostNo(int jobPostReqNo);
	
	/* 채용공고의 분류를 승인된 공고로 변경 */
	int updatePostUpdateApp1(int jobPostNo);
	
	/* 채용공고 승인여부이력의 응답구분을 승인으로 변경 */
	int updatePostUpdateApp2(int jobPostReqNo);
	/* 수정완료전공고의 분류를 수정완료전공고 로 변경 */
	int updatePostUpdateApp3(int changeReqJobPostNo);
	
	/* 채용공고의 분류를 거절된 공고로 변경 */
	int updatePostUpdateRejectRequest1(Map<String, Object> map);

	/* 채용공고 승인여부이력의 응답구분을 승인으로 변경 */
	int updatePostUpdateRejectRequest2(Map<String, Object> map);

	/* 승인요청번호로 거절사유 조회 */
	String selectPostRejectReasonMessage(int jobPostReqNo);
	



}
