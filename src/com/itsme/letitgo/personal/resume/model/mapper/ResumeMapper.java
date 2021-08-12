package com.itsme.letitgo.personal.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public interface ResumeMapper {

	List<ResumeDTO> selectAllResumeList();

	List<DetailResumeDTO> selectDetailResumeList();

	int insertResume(List<InsertResumeDTO> irList);

	int insertCareer(List<InsertResumeDTO> irList);

	int insertPot(List<InsertResumeDTO> irList);

	int insertLicense(List<InsertResumeDTO> irList);

	int insertEdu(List<InsertResumeDTO> irList);

	int insertAwd(List<InsertResumeDTO> irList);

	int insertIntroNo(List<InsertResumeDTO> irList);

	int insertIntroContent(List<InsertResumeDTO> irList);


}
