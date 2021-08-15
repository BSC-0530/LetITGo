package com.itsme.letitgo.admin.question.model.dto;

public class InquiryCategoryDTO {
	
	private int inquiryCategoryNo;
	private String inquiryCategoryName; //문의카테고리 이름
	
	public InquiryCategoryDTO() {}
	
	
	public InquiryCategoryDTO(int inquiryCategoryNo, String inquiryCategoryName) {
		super();
		this.inquiryCategoryNo = inquiryCategoryNo;
		this.inquiryCategoryName = inquiryCategoryName;
	}


	public int getInquiryCategoryNo() {
		return inquiryCategoryNo;
	}

	public void setInquiryCategoryNo(int inquiryCategoryNo) {
		this.inquiryCategoryNo = inquiryCategoryNo;
	}

	public String getInquiryCategoryName() {
		return inquiryCategoryName;
	}

	public void setInquiryCategoryName(String inquiryCategoryName) {
		this.inquiryCategoryName = inquiryCategoryName;
	}


	@Override
	public String toString() {
		return "InquiryCategoryDTO [inquiryCategoryNo=" + inquiryCategoryNo + ", inquiryCategoryName="
				+ inquiryCategoryName + "]";
	}
	
}
