package com.itsme.letitgo.company.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;

public interface CompanyInfoMapper {

	List<CompanyAddInfoDTO> selectedInfoCompany();


	List<Object> companyAddInfo(CompanyAddInfoDTO dto);


	List<Object> myJobPosting(CompanyAddInfoDTO dto);



}
