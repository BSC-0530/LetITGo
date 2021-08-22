package com.itsme.letitgo.company.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;

public class CompanyInfoService {
	//마이페이지 기업추가정보조회
	public CompanyAddInfoDTO selectedInfoCompany(int memberNo) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyAddInfoDTO infoList = mapper.selectedInfoCompany(memberNo);
		
		session.close();
		
		return infoList;
	}

	public Map<String, List<Object>> selectCoInfoAndJp(CompanyAddInfoDTO dto) {
		
		SqlSession session = getSqlSession();
		
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		// 기업 회사 정보 담아오기
		List<Object> companyAddInfo = mapper.companyAddInfo(dto);
		
		
		// 공고List를 담아오기 위해 변수 선언
		List<Object> myJobPosting = new ArrayList<>();
		
		// coMemNo를 담은 dto 넘겨서 일치하는 공고 정보 담아오기
		myJobPosting = mapper.myJobPosting(dto);
		
		Map<String, List<Object>> coAddInfoAndJobPosting = new HashMap<>();
		
		coAddInfoAndJobPosting.put("companyAddInfo", companyAddInfo);
		coAddInfoAndJobPosting.put("myJobPosting", myJobPosting);
		
		session.close();
		
		return coAddInfoAndJobPosting;
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
