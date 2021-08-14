package com.itsme.letitgo.admin.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.resume.model.dto.JobFieldDTO;

public interface JobFieldMapper {

	int jobFieldInsert(JobFieldDTO requestJobField);

	List<JobFieldDTO> selectAllJobFieldList();

	int jobFieldDelete(int no);

}
