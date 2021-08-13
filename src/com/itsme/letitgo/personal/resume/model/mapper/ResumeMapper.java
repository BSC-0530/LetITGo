package com.itsme.letitgo.personal.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.InsertResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public interface ResumeMapper {

	List<ResumeDTO> selectAllResumeList();

	List<DetailResumeDTO> selectDetailResumeList(int resumeNo);

	int insertResume(InsertResumeDTO ir);

	int insertCareer(InsertResumeDTO ir);

	int insertPot(InsertResumeDTO ir);

	int insertLicense(InsertResumeDTO ir);

	int insertEdu(InsertResumeDTO ir);

	int insertAwd(InsertResumeDTO ir);

	int insertIntroNo(List<InsertResumeDTO> irList);

	int insertIntroContent(InsertResumeDTO ir);

	int selectResume(String resumeTitle);

	int updateResume(InsertResumeDTO ir);

	int updateCareer(InsertResumeDTO ir);

	int updatePot(InsertResumeDTO ir);

	int updateIntroContent(InsertResumeDTO ir);

	int updateLicense(InsertResumeDTO ir);

	int updateEdu(InsertResumeDTO ir);

	int updateAwd(InsertResumeDTO ir);

	int deleteResume(int resumeNo);

	int deleteAwd(int resumeNo);

	int deleteLicense(int resumeNo);

	int deleteIntroContent(int resumeNo);

	int deletePot(int resumeNo);

	int deleteEdu(int resumeNo);

	int deleteCareer(int resumeNo);

	int deleteSkills(int resumeNo);


}
