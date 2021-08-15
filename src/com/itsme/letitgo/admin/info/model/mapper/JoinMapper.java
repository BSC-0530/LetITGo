package com.itsme.letitgo.admin.info.model.mapper;

import java.util.Map;

import com.itsme.letitgo.admin.info.model.dto.CompanyJoinDTO;

public interface JoinMapper {


	int RequestJoinReject1(Map<String, Object> map);

	int RequestJoinReject2(Map<String, Object> map);

	int RequestJoin(int coReqNo);

	int RequestJoin2(int coMemNo);

	int selectedDetail(CompanyJoinDTO companyJoinDTO);

	int detailInfo1(Map<String, Object> map);

	int detailInfo2(Map<String, Object> map);




	

}
