package com.itsme.letitgo.admin.info.model.mapper;

import java.util.Map;

public interface JoinMapper {


	int RequestJoinReject1(Map<String, Object> map);

	int RequestJoinReject2(Map<String, Object> map);

	int RequestJoin(int coReqNo);

	int RequestJoin2(int coMemNo);

	

}
