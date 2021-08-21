package com.itsme.letitgo.company.recruit.applicant.model.dto;

public class SelfIntroductionDTO implements java.io.Serializable {
	
	private int resumeNo;
	private int selfIntroItemNo;
	private String selfIntroItemContent;
	private String selfIntroItemName;
	
	public SelfIntroductionDTO() {}

	public SelfIntroductionDTO(int resumeNo, int selfIntroItemNo, String selfIntroItemContent, String selfIntroItemName) {
		super();
		this.resumeNo = resumeNo;
		this.selfIntroItemNo = selfIntroItemNo;
		this.selfIntroItemContent = selfIntroItemContent;
		this.selfIntroItemName = selfIntroItemName;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getSelfIntroItemNo() {
		return selfIntroItemNo;
	}

	public void setSelfIntroItemNo(int selfIntroItemNo) {
		this.selfIntroItemNo = selfIntroItemNo;
	}

	public String getSelfIntroItemContent() {
		return selfIntroItemContent;
	}

	public void setSelfIntroItemContent(String selfIntroItemContent) {
		this.selfIntroItemContent = selfIntroItemContent;
	}

	public String getSelfIntroItemName() {
		return selfIntroItemName;
	}

	public void setSelfIntroItemName(String selfIntroItemName) {
		this.selfIntroItemName = selfIntroItemName;
	}

	@Override
	public String toString() {
		return "SelfIntroduceDTO [resumeNo=" + resumeNo + ", selfIntroItemNo=" + selfIntroItemNo
				+ ", selfIntroItemContent=" + selfIntroItemContent + ", selfIntroItemName=" + selfIntroItemName + "]";
	}
	

	

}
