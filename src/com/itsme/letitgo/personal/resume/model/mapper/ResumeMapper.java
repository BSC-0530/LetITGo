package com.itsme.letitgo.personal.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public interface ResumeMapper {

	List<ResumeDTO> selectAllResumeList();

	List<DetailResumeDTO> selectDetailResumeList();

	int insertResume(InsertResumeDTO ir);

	int insertCareer(InsertResumeDTO ir);

	int insertPot(InsertResumeDTO ir);

	int insertLicense(InsertResumeDTO ir);

	int insertEdu(InsertResumeDTO ir);

	int insertAwd(InsertResumeDTO ir);

	int insertIntroNo(List<InsertResumeDTO> irList);

	int insertIntroContent(InsertResumeDTO ir);

	int selectResume(String resumeTitle);


}
