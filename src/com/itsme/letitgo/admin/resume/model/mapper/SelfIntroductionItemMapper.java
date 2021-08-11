package com.itsme.letitgo.admin.resume.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.resume.model.dto.SelfIntroductionItemDTO;

public interface SelfIntroductionItemMapper {

	int selfIntroductionItemInsert(SelfIntroductionItemDTO requestSelfIntroductionItem);

	List<SelfIntroductionItemDTO> selectAllSelfIntroductionItemList();

}

