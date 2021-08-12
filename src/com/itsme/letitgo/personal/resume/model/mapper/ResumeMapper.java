package com.itsme.letitgo.personal.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public interface ResumeMapper {

	List<ResumeDTO> selectAllResumeList();

	List<DetailResumeDTO> selectDetailResumeList();

	int insertResume(DetailResumeDTO dr);

	int insertCareer(DetailResumeDTO dr);

	int insertPort(DetailResumeDTO dr);

	int insertIntro(DetailResumeDTO dr);

	int insertLicense(DetailResumeDTO dr);

	int insertEdu(DetailResumeDTO dr);

	int insertAwd(DetailResumeDTO dr);

}
