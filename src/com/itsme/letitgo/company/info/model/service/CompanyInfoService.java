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
	public CompanyAddInfoDTO selectedInfoCompany() {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyAddInfoDTO infoList = mapper.selectedInfoCompany();
		
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
	public CompanyInfoDTO selectCoMemInfo() {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		CompanyInfoDTO coMemDTO = mapper.coMemInfoSelect();
		
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
	//기업정보 수정 요청 종류 대기로 인서트하기
	public int updateRequestAddInfo(CompanyAddInfoDTO comAd) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		int result = mapper.updateRequestAddInfo(comAd);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result;
	}
	public int insertCoLogoAttachment(FileUploadDTO logoFile) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		int result2 = mapper.insertCoLogoAttachment(logoFile);
		
		if(result2 > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result2;
	}
	public int insertCoRepresentativImageAttachment(FileUploadDTO representativImage) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		int result3 = mapper.insertCoRepresentativImageAttachment(representativImage);
		
		if(result3 > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result3;
	}
	public int insertBusinessRegistrationAttachment(FileUploadDTO businessNO) {
		
		SqlSession session = getSqlSession();
		
		CompanyInfoMapper mapper = session.getMapper(CompanyInfoMapper.class);
		
		int result4 = mapper.insertBusinessRegistrationAttachment(businessNO);
		
		if(result4 > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		session.close();
		
		return result4;
	}


}
