package com.itsme.letitgo.admin.info.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class RequestService {

	public List<InsertRequestDTO> joinList() {
		
		SqlSession session = getSqlSession();
		
		InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
		
		List<InsertRequestDTO> insertRequestList = mapper.insertRequestList();
		
		session.close();
		
		return insertRequestList;
		
	}

	//기업정보 수정 요청 종류 대기로 인서트하기
		public int updateRequestAddInfo(CoMemberAppHistoryDTO comAd) {
			
			SqlSession session = getSqlSession();
			
			InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
			
			int result = mapper.updateRequestAddInfo(comAd);
			
			if(result > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result;
			
		}
		public int insertCoLogoAttachment(CoMemberAppHistoryDTO logoFile) {
			
			SqlSession session = getSqlSession();
			
			InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
			
			int result2 = mapper.insertCoLogoAttachment(logoFile);
			
			if(result2 > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result2;
			
		}
		public int insertCoRepresentativImageAttachment(CoMemberAppHistoryDTO representativImage) {
			
			SqlSession session = getSqlSession();
			
			InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
			
			int result3 = mapper.insertCoRepresentativImageAttachment(representativImage);
			
			if(result3 > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result3;
			
		}
		public int insertBusinessRegistrationAttachment(CoMemberAppHistoryDTO businessNO) {
			
			SqlSession session = getSqlSession();
			
			InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
			
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
