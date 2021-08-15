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
	//관리자 답변창
	public List<InquiryDTO> answerInquiry(int num) {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper = session.getMapper(AdminInquiryMapper.class);
		
		List<InquiryDTO> answerInquiry = mapper.answerInquiry(num);
		
		session.close();
		
		return answerInquiry;
	}

	public int inquiryAnswerContent(InquiryDTO inquiryDTO) {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper= session.getMapper(AdminInquiryMapper.class);
		
		int result = mapper.inquiryAnswerContent(inquiryDTO);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int inquiryCategoryInsert(InquiryCategoryDTO insertCategory) {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper= session.getMapper(AdminInquiryMapper.class);
		
		int result = mapper.inquiryCategoryInsert(insertCategory);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int InquiryCategoryDeleted(int categoryCode) {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper = session.getMapper(AdminInquiryMapper.class);
		
		int result = mapper.InquiryCategoryDeleted(categoryCode);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
	}

	public int requestQuestionInsert(InquiryDTO inquiryDTO) {
		
		SqlSession session = getSqlSession();
		
		AdminInquiryMapper mapper= session.getMapper(AdminInquiryMapper.class);
		
		int result = mapper.requestQuestionInsert(inquiryDTO);
		
		if(result > 0) {
			session.commit();
		}else {
			session.rollback();
		}
		
		session.close();
		
		return result;
		
	}


}








