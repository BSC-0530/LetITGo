package com.itsme.letitgo.company.info.model.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;

public interface CompanyInfoMapper {

	CompanyAddInfoDTO selectedInfoCompany();


	List<Object> companyAddInfo(CompanyAddInfoDTO dto);


	List<Object> myJobPosting(CompanyAddInfoDTO dto);


	CompanyInfoDTO coMemInfoSelect();


	int modifyCoMemInfo(CompanyInfoDTO coMem);

	//기업정보변경 요청보낸거 요청테이블에 인서트
	int updateRequestAddInfo(CompanyAddInfoDTO comAd);
//
////기업정보변경 요청보낸거 요청테이블에 인서트
	int insertCoLogoAttachment(FileUploadDTO logoFile);

	//기업정보변경 요청보낸거 요청테이블에 인서트
	int insertCoRepresentativImageAttachment(FileUploadDTO representativImage);

	//기업정보변경 요청보낸거 요청테이블에 인서트
	int insertBusinessRegistrationAttachment(FileUploadDTO businessNO);



}
