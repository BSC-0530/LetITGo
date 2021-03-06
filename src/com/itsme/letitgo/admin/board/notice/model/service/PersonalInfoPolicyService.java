package com.itsme.letitgo.admin.board.notice.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.board.notice.model.dto.PersonalInfoPolicyDTO;
import com.itsme.letitgo.admin.board.notice.model.mapper.PersonalInfoPolicyMapper;

public class PersonalInfoPolicyService {

	public int personalInfoPolicyInsert(PersonalInfoPolicyDTO requestPersonalInfoPolicy) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper personalInfoPolicyMapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		int result = personalInfoPolicyMapper.personalInfoPolicyInsert(requestPersonalInfoPolicy);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}

	public List<PersonalInfoPolicyDTO> selectAllPersonalInfoPolicyList() {

		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper personalInfoPolicyMapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		List<PersonalInfoPolicyDTO> personalInfoPolicyList = personalInfoPolicyMapper.selectAllPersonalInfoPolicyList();
		
		session.close();
		
		return personalInfoPolicyList;
	}

//	public int personalInfoPolicyModifyInsert(PersonalInfoPolicyDTO personalInfoPolicyModifyInsert) {
//
//		SqlSession session = getSqlSession();
//		
//		PersonalInfoPolicyMapper personalInfoPolicyMapper = session.getMapper(PersonalInfoPolicyMapper.class);
//		
//		System.out.println("personalInfoPolicyModifyInsert : " + personalInfoPolicyModifyInsert);
//		
//		int result = personalInfoPolicyMapper.personalInfoPolicyModifyInsert(personalInfoPolicyModifyInsert);
//		
//		if(result > 0) {
//			session.commit();
//		} else {
//			session.rollback();
//		}
//		
//		session.close();
//		
//		return result;
//	}

	public PersonalInfoPolicyDTO selectDetailList(int postNo) {

		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper mapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		PersonalInfoPolicyDTO detailList = mapper.selectDetailList(postNo);
		System.out.println("detailList : " + detailList );
		
		session.close();
		
		//?????????
		System.out.println("????????? : " + detailList);
		
		return detailList;
	}

	public int policyModifyInsert(PersonalInfoPolicyDTO policyModifyInsert) {

		SqlSession session = getSqlSession();
		
		PersonalInfoPolicyMapper mapper = session.getMapper(PersonalInfoPolicyMapper.class);
		
		System.out.println("????????? : " + policyModifyInsert);
		
		int result = mapper.policyModifyInsert(policyModifyInsert);
		
		if(result > 0) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	

}











