package com.itsme.letitgo.personal.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public interface ResumeMapper {

	List<ResumeDTO> selectAllResumeList();

}
