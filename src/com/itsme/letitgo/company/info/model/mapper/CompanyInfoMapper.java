package com.itsme.letitgo.company.info.model.mapper;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.login.model.dto.MemberLoginDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.SelectJobPostingDTO;

public interface CompanyInfoMapper {

	CompanyAddInfoDTO selectedInfoCompany(int memberNo);


	List<Object> companyAddInfo(CompanyAddInfoDTO dto);


	List<Object> myJobPosting(CompanyAddInfoDTO dto);


	CompanyInfoDTO coMemInfoSelect(int memNo);

//기업담당자 수정
	int modifyCoMemInfo(CompanyInfoDTO coMem);

//로고이미지불러오기
	FileUploadDTO selectLogoFile(int memNo);

//대표이미지불러오기
	FileUploadDTO selectRepresentFile(int memNo);

//사업자등록증불러오기
	FileUploadDTO selectBusinessFile(int memNo);









}
