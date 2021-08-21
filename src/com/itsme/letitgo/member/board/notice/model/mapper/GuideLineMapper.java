package com.itsme.letitgo.member.board.notice.model.mapper;

import java.util.List;

import com.itsme.letitgo.member.board.notice.model.dto.GuideLineDTO;

public interface GuideLineMapper {

	List<GuideLineDTO> selectAllGuideLineList();

	GuideLineDTO selectDetail(int postNo);

	List<GuideLineDTO> selectNoticeList();

}
