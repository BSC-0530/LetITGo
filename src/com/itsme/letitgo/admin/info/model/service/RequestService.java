package com.itsme.letitgo.admin.info.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.dto.CoMemberAppHistoryDTO;
import com.itsme.letitgo.admin.info.model.dto.InsertRequestDTO;
import com.itsme.letitgo.admin.info.model.mapper.InsertRequestMapper;
import com.itsme.letitgo.admin.info.model.mapper.RequestComInfoMapper;
import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;
import com.itsme.letitgo.company.info.model.dto.FileUploadDTO;
import com.itsme.letitgo.company.info.model.mapper.CompanyInfoMapper;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

public class RequestService {

	//요청 리스트
	public List<InsertRequestDTO> joinList() {
		
		SqlSession session = getSqlSession();
		
		InsertRequestMapper mapper = session.getMapper(InsertRequestMapper.class);
		
		List<InsertRequestDTO> insertRequestList = mapper.insertRequestList();
		
		session.close();
		
		return insertRequestList;
		
	}

	
	
	//기업정보 수정 요청 보냄
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


		public List<CoMemberAppHistoryDTO> selectedlist() {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper = session.getMapper(RequestComInfoMapper.class);
			
			List<CoMemberAppHistoryDTO> comList = mapper.selectedReqList();
			
			session.close();
			
			return comList;
		}

		public List<CompanyAddInfoDTO> selectedOrgin() {
			
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper = session.getMapper(RequestComInfoMapper.class);
			
			List<CompanyAddInfoDTO> origin = mapper.selectedOrign();
			
			session.close();
			
			return origin;
			
		}



//원본 조회해 
		public CompanyAddInfoDTO adminDetailPageOrigin(int memNo) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper = session.getMapper(RequestComInfoMapper.class);
			
			CompanyAddInfoDTO orginInfo = mapper.adminDetailPageOrigin(memNo);
			
			session.close();
			
			return orginInfo;
			
		}


//수정정보조회
		public CoMemberAppHistoryDTO adminDetailPageRequest(int reqNo) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper = session.getMapper(RequestComInfoMapper.class);
			
			CoMemberAppHistoryDTO reqInfo = mapper.adminDetailPageRequest(reqNo);
			
			session.close();
			
			return reqInfo;
			
		}


//회원정보업데이트
		public int adminAcceptRequestInfo(CompanyAddInfoDTO info) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper = session.getMapper(RequestComInfoMapper.class);
			
			int result = mapper.adminAcceptRequestInfo(info);
			
			if(result > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			
			session.close();
			
			return result;
		}


//회원정보수정 테이블 구분 시간 업데이트
		public int adminAcceptRequestInfoKinds(int coReqNo) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper =session.getMapper(RequestComInfoMapper.class);
			
			int result = mapper.adminAcceptRequestInfoKinds(coReqNo);
			
			if(result > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result;
		}



		public int rejectReasonInsert(CoMemberAppHistoryDTO info) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper =session.getMapper(RequestComInfoMapper.class);
			
			int result = mapper.rejectReasonInsert(info);
			
			if(result > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result;
			
		}
		
		public int rejectReasonTextInsert(CoMemberAppHistoryDTO info) {
			
			SqlSession session = getSqlSession();
			
			RequestComInfoMapper mapper =session.getMapper(RequestComInfoMapper.class);
			
			int result = mapper.rejectReasonTextInsert(info);
			
			if(result > 0) {
				session.commit();
			}else {
				session.rollback();
			}
			session.close();
			
			return result;		
			
		}





}
