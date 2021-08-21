package com.itsme.letitgo.company.regist.model.mapper;

import com.itsme.letitgo.company.regist.model.dto.CoAttachmentDTO;
import com.itsme.letitgo.company.regist.model.dto.CoMemberDTO;

public interface RegistCoMemberMapper {

	/* 중복된 아이디가 있는지 확인 */
	int duplicateIdCheck(String memId);
	
	/* 입력된 정보로 기업회원가입 등록 */
	int coMemberRegist(CoMemberDTO coMemberDTO);

	/* 입력된 정보로 회원번호 조회 */
	int SelectCoMemberNo(String memId);
	
	/* 회원번호로 기업회원 추가정보 등록 */
	int coMemberAddInfoRegist(CoMemberDTO coMemberDTO);
	
	/* 기업회원가입 승인여부이력 생성 */
	int insertRequestAppHistory(int memNo);

	/* 로고이미지 저장 */
	int insertCoLogoAttachment(CoAttachmentDTO coLogoAttachment);

	/* 대표이미지 저장 */
	int insertCoRepresentativImageAttachment(CoAttachmentDTO coRepresentativImageAttachment);

	/* 사업자등록증 저장 */
	int insertBusinessRegistrationAttachment(CoAttachmentDTO businessRegistrationAttachment);


}
