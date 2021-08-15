package com.itsme.letitgo.admin.question.model.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import static com.itsme.letitgo.common.mybatis.Template.getSqlSession;

import com.itsme.letitgo.admin.question.model.dto.InquiryCategoryDTO;
import com.itsme.letitgo.admin.question.model.dto.InquiryDTO;
import com.itsme.letitgo.admin.question.model.mapper.AdminInquiryMapper;

public class InquiryListService {

	public List<InquiryDTO> InquirySelectHistory() {
		
	SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper = session.getMapper(AdminInquiryMapper.class);
		
		List<InquiryDTO> InquirySelectHistory = mapper.selectAdminPaymentHistory();
		
		session.close();
				
		return InquirySelectHistory;
		
		
	}

	public List<InquiryCategoryDTO> categoryListSelect() {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper = session.getMapper(AdminInquiryMapper.class);
		
		List<InquiryCategoryDTO> categoryList = mapper.categoryListSelect();
		
		session.close();
		
		return categoryList;
	}

}
