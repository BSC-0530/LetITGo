package com.itsme.letitgo.admin.question.model.mapper;

import java.util.List;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;

public interface AdminInquiryMapper {

	List<InquiryDTO> selectAdminPaymentHistory();

	List<InquiryCategoryDTO> categoryListSelect();

}
