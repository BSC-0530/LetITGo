package com.itsme.letitgo.admin.info.model.service;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.itsme.letitgo.admin.info.model.dto.MemberWithdrawalDTO;
import com.itsme.letitgo.admin.info.model.mapper.MemberWithdrawalMapper;

public class MemberWithdrawalService {

	public List<MemberWithdrawalDTO> selectAllMemberWithdrawal() {
		
		SqlSession session = getSqlSession();
		
		MemberWithdrawalMapper mapper = session.getMapper(MemberWithdrawalMapper.class);
		
		List<MemberWithdrawalDTO> memberWithdrawal = mapper.selectAllMemberWithdrawal();
		
		session.close();
		
		return memberWithdrawal;
	}


}
