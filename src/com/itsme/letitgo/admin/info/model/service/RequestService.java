package com.itsme.letitgo.admin.info.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class RequestService {

	public List<InsertRequestDTO> joinList() {
		
		SqlSession session = getSqlSession();
		
		InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
		
		List<InsertRequestDTO> insertRequestList = mapper.insertRequestList();
		
		session.close();
		
		return insertRequestList;
	}

	



	

}
