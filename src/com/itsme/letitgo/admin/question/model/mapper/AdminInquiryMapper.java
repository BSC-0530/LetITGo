package com.itsme.letitgo.admin.question.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;

public interface AdminInquiryMapper {

	List<InquiryDTO> selectAdminPaymentHistory();

	List<InquiryCategoryDTO> categoryListSelect();

	List<InquiryDTO> answerInquiry(int num);
//답변하기
	int inquiryAnswerContent(InquiryDTO inquiryDTO);
//1대1 카테고리 추가
	int inquiryCategoryInsert(InquiryCategoryDTO insertCategory);
//1:1 카테고리 삭제
	int InquiryCategoryDeleted(int categoryCode);

	//문의하기 
	int requestQuestionInsert(InquiryDTO inquiryDTO);


}
