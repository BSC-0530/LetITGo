package com.itsme.letitgo.personal.recruit.apply.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.recruit.apply.model.mapper.PersonalApplyMapper;

public class PersonalApplyService {

	public boolean personalRecruitApply(Map<String, Integer> applyMap) {

		SqlSession session = getSqlSession();

		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);

		/* 공고번호와 이력서 번호를 이용해서 채용공고별 지원내역 그리고 지원내역 상태 변경이력 테이블에 insert 후 결과값 리턴 */
		int result1 = mapper.insertApplyngHistory(applyMap);
		int result2 = mapper.insertApplyingChangeHistory(applyMap);
		int result = result1 + result2;
		
		if(result >= 2) {
			session.commit();
			
		} else {
			session.rollback();
		}
		
		session.close();

		return result >= 2? true : false;
	}

	public boolean personalCancelApply(Map<String, Integer> applyMap) {
		
		SqlSession session = getSqlSession();
		
		PersonalApplyMapper mapper = session.getMapper(PersonalApplyMapper.class);
		
		/* 
		 * 공고번호와 이력서 번호를 이용해서 채용공고별 지원내역에 저장된 지원상태를 취소로 update 
		 * 그리고 지원내역 상태 변경이력 테이블에 insert 후 결과값 리턴
		 *  */
		int result1 = mapper.updateApplyingHistory(applyMap);
		int result2 = mapper.insertApplyingChangeHistory(applyMap);
		int result = result1 + result2;

		if (result >= 2) {
			session.commit();
		} else {
			session.rollback();
		}
		
		session.close();
		
		return result >= 2? true : false;
	}

}
