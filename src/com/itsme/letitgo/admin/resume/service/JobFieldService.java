package com.itsme.letitgo.admin.resume.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.admin.resume.model.mapper.JobFieldMapper;

public class JobFieldService {

	public int jobFieldInsert(JobFieldDTO requestJobField) {

		SqlSession session = getSqlSession();
		
		JobFieldMapper jobFieldMapper = session.getMapper(JobFieldMapper.class);
		
		int result = jobFieldMapper.jobFieldInsert(requestJobField);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public List<JobFieldDTO> selectAllJobFieldList() {
		
		SqlSession session = getSqlSession();
		
		JobFieldMapper jobFieldMapper = session.getMapper(JobFieldMapper.class);
		
		List<JobFieldDTO> jobFieldList = jobFieldMapper.selectAllJobFieldList();
		
		session.close();
		
		return jobFieldList;
	}

	public int jobFieldDelete(int no) {
		
		SqlSession session = getSqlSession();
		
		JobFieldMapper jobFieldMapper = session.getMapper(JobFieldMapper.class);
		
		int result = jobFieldMapper.jobFieldDelete(no);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

}









