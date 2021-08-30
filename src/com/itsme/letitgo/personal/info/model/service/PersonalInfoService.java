package com.itsme.letitgo.personal.info.model.service;

import java.util.List;

import com.itsme.letitgo.personal.info.model.dto.ModifyMemberDTO;
import com.itsme.letitgo.personal.info.model.dto.RestrictedCompanyDTO;
import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.personal.info.model.mapper.PersonalInfoMapper;

public class PersonalInfoService {

	public List<RestrictedCompanyDTO> selectRectrictedCompany(int memNo) {
		
		SqlSession session = getSqlSession();
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);
		
		List<RestrictedCompanyDTO> restrictedCompanyList = mapper.selectRectrictedCompany(memNo);
		
		session.close();
				
		return restrictedCompanyList;
	}

	public int modifyPersonalInfo(ModifyMemberDTO mdMemberDTO) {
		/*session을 생성한다.*/
		SqlSession session = getSqlSession();	
		
		/*mapper 생성한다.*/
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);	
		
		/*result 변수 선언 후 modifyPersonalInfo 메소드를 생성하고 mdMemberDTO값을 가져간다.*/
		int result = mapper.modifyPersonalInfo(mdMemberDTO);			
		
		if(result > 0) {
			/*성공시 커밋한다.*/
			session.commit();
		}else {
			/*실패시 롤백한다.*/
			session.rollback();
		}
		/*session을 닫는다.*/
		session.close();
		
		/*result로 리턴한다.*/
		return result;
	}

	public String selectTitlePath(int memNo) {
		
		SqlSession session = getSqlSession();	
		
		PersonalInfoMapper mapper = session.getMapper(PersonalInfoMapper.class);	
		
		String titlePath = mapper.selectTitlePath(memNo);
		
		session.close();

		return titlePath;
	}

}
