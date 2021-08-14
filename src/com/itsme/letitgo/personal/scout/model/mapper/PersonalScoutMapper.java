package com.itsme.letitgo.personal.scout.model.mapper;

import java.util.List;

import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;
import com.itsme.letitgo.personal.scout.model.dto.ScoutDetailResumeDTO;

public interface PersonalScoutMapper {

	int updateScoutStatus(int resumeNo);

	List<ResumeDTO> selectResume();

	List<ScoutDetailResumeDTO> selectDetailResume();

}
