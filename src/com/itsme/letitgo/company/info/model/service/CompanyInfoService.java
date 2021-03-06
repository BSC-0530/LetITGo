package com.itsme.letitgo.company.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;
import com.itsme.letitgo.company.recruit.jobposting.model.dto.SelectCoMyJobPostingDTO;

public class CompanyInfoService {
	//마이페이지 기업추가정보조회
	public CompanyAddInfoDTO selectedInfoCompany(int memberNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyAddInfoDTO infoList = mapper.selectedInfoCompany(memberNo);
		
		session.close();
		
		return infoList;
	}

	public CompanyAddInfoDTO selectCoInfoAndJp(CompanyAddInfoDTO dto) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		/* 선택한 기업의 정보 조회 */
		CompanyAddInfoDTO companyAddInfo = mapper.companyAddInfo(dto);
		
		/* 선택한 기업에서 현재 채용중인 공고 조회 */
		List<SelectCoMyJobPostingDTO> myJobPosting = mapper.myJobPosting(dto);
		
		companyAddInfo.setCoMyJobPostingList(myJobPosting);
		
		session.close();
		
		return companyAddInfo;
	}
	//마이페이지 기업당장자 조회
	public CompanyInfoDTO selectCoMemInfo(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyInfoDTO coMemDTO = mapper.coMemInfoSelect(memNo);
		
		session.close();
		
		return coMemDTO;
	}
	//기업 담당자 정보 수정
	public int modifyCoMemInfo(CompanyInfoDTO coMem) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		int result = mapper.modifyCoMemInfo(coMem);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}
//마이페이지 사진조회
	public FileUploadDTO selectLogoFile(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		FileUploadDTO logoImage = mapper.selectLogoFile(memNo);
		
		session.close();
		
		return logoImage;
	}

	public FileUploadDTO selectRepresentFile(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		FileUploadDTO representativeImage = mapper.selectRepresentFile(memNo);
		
		session.close();
		
		return representativeImage;
	}

	public FileUploadDTO selectBusinessFile(int memNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		FileUploadDTO businessRegistration = mapper.selectBusinessFile(memNo);
		
		session.close();
		
		return businessRegistration;
	}



}
