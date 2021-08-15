package com.itsme.letitgo.admin.question.model.dto;

import java.sql.Date;

public class InquiryDTO {
	
	private int inquiryNo;
	private int managerMemberNo; //관리자번호
	private String inquiryEmail;//ㅇ메일
	private String inquiryTitle;//문의제목
	private String inquiryContents;  //내용
	private String inquiryAnsYN; //응답여부
	private java.sql.Date inquiryDate; //문의일자
	private String inquiryAnsContent; //답변내용
	private java.sql.Date inquiryAnsDate; //답변 일자
	private String inquiryCategoryNo; //카테고리 번호
	private InquiryCategoryDTO categoryNameDTO;
	
	public InquiryDTO() {}

	public InquiryDTO(int inquiryNo, int managerMemberNo, String inquiryEmail, String inquiryTitle,
			String inquiryContents, String inquiryAnsYN, Date inquiryDate, String inquiryAnsContent,
			Date inquiryAnsDate, String inquiryCategoryNo, InquiryCategoryDTO categoryNameDTO) {
		super();
		this.inquiryNo = inquiryNo;
		this.managerMemberNo = managerMemberNo;
		this.inquiryEmail = inquiryEmail;
		this.inquiryTitle = inquiryTitle;
		this.inquiryContents = inquiryContents;
		this.inquiryAnsYN = inquiryAnsYN;
		this.inquiryDate = inquiryDate;
		this.inquiryAnsContent = inquiryAnsContent;
		this.inquiryAnsDate = inquiryAnsDate;
		this.inquiryCategoryNo = inquiryCategoryNo;
		this.categoryNameDTO = categoryNameDTO;
	}

	public int getInquiryNo() {
		return inquiryNo;
	}

	public void setInquiryNo(int inquiryNo) {
		this.inquiryNo = inquiryNo;
	}

	public int getManagerMemberNo() {
		return managerMemberNo;
	}

	public void setManagerMemberNo(int managerMemberNo) {
		this.managerMemberNo = managerMemberNo;
	}

	public String getInquiryEmail() {
		return inquiryEmail;
	}

	public void setInquiryEmail(String inquiryEmail) {
		this.inquiryEmail = inquiryEmail;
	}

	public String getInquiryTitle() {
		return inquiryTitle;
	}

	public void setInquiryTitle(String inquiryTitle) {
		this.inquiryTitle = inquiryTitle;
	}

	public String getInquiryContents() {
		return inquiryContents;
	}

	public void setInquiryContents(String inquiryContents) {
		this.inquiryContents = inquiryContents;
	}

	public String getInquiryAnsYN() {
		return inquiryAnsYN;
	}

	public void setInquiryAnsYN(String inquiryAnsYN) {
		this.inquiryAnsYN = inquiryAnsYN;
	}

	public java.sql.Date getInquiryDate() {
		return inquiryDate;
	}

	public void setInquiryDate(java.sql.Date inquiryDate) {
		this.inquiryDate = inquiryDate;
	}

	public String getInquiryAnsContent() {
		return inquiryAnsContent;
	}

	public void setInquiryAnsContent(String inquiryAnsContent) {
		this.inquiryAnsContent = inquiryAnsContent;
	}

	public java.sql.Date getInquiryAnsDate() {
		return inquiryAnsDate;
	}

	public void setInquiryAnsDate(java.sql.Date inquiryAnsDate) {
		this.inquiryAnsDate = inquiryAnsDate;
	}

	public String getInquiryCategoryNo() {
		return inquiryCategoryNo;
	}

	public void setInquiryCategoryNo(String inquiryCategoryNo) {
		this.inquiryCategoryNo = inquiryCategoryNo;
	}

	public InquiryCategoryDTO getCategoryNameDTO() {
		return categoryNameDTO;
	}

	public void setCategoryNameDTO(InquiryCategoryDTO categoryNameDTO) {
		this.categoryNameDTO = categoryNameDTO;
	}

	@Override
	public String toString() {
		return "InquiryDTO [inquiryNo=" + inquiryNo + ", managerMemberNo=" + managerMemberNo + ", inquiryEmail="
				+ inquiryEmail + ", inquiryTitle=" + inquiryTitle + ", inquiryContents=" + inquiryContents
				+ ", inquiryAnsYN=" + inquiryAnsYN + ", inquiryDate=" + inquiryDate + ", inquiryAnsContent="
				+ inquiryAnsContent + ", inquiryAnsDate=" + inquiryAnsDate + ", inquiryCategoryNo=" + inquiryCategoryNo
				+ ", categoryNameDTO=" + categoryNameDTO + "]";
	}

	
	
}


