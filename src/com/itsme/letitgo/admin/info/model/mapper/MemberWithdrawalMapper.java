package com.itsme.letitgo.admin.info.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.info.model.dto.MemberWithdrawalDTO;

public interface MemberWithdrawalMapper {

	List<MemberWithdrawalDTO> selectAllMemberWithdrawal();

}
