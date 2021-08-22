package com.itsme.letitgo.main.model.mapper;

import java.util.List;

import com.itsme.letitgo.main.model.dto.JpSkillsDTO;
import com.itsme.letitgo.main.model.dto.PremiumRecruitDTO;

public interface MainPageMapper {

	List<PremiumRecruitDTO> selectPremiumRecruit();

	List<JpSkillsDTO> selectSkillsList();

}
