package com.itsme.letitgo.company.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;

public interface CompanyInfoMapper {

	List<CompanyAddInfoDTO> selectedInfoCompany();


	CompanyAddInfoDTO companyAddInfo(CompanyAddInfoDTO dto);



}
