package com.itsme.letitgo.admin.info.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class RequestService {

	public List<InsertRequestDTO> selectedInfoJoin() {
		
		SqlSession session = getSqlSession();
		
		InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
		
		List<InsertRequestDTO> insertInfo = mapper.selectedInsertRequest();
		
		session.close();
		
		return insertInfo;
	}



	public static int detailInfo(InsertRequestDTO insertRequestDTO) {
		
		SqlSession session = getSqlSession();
		
		InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
		
		int result = mapper.detailInfo(insertRequestDTO);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
			session.close();
		return result;
	}

}
