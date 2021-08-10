package com.itsme.letitgo.personal.resume.model.dto;

public class SelfIntroductionContentDTO implements java.io.Serializable {
	
	private int selfIntroItemNo;
	private String selfIntroItemContent;
	private int resumeNo;
	
	public SelfIntroductionContentDTO() {}
	
	public SelfIntroductionContentDTO(int selfIntroItemNo, String selfIntroItemContent, int resumeNo) {
		super();
		this.selfIntroItemNo = selfIntroItemNo;
		this.selfIntroItemContent = selfIntroItemContent;
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

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	@Override
	public String toString() {
		return "SelfIntroductionContentDTO [selfIntroItemNo=" + selfIntroItemNo + ", selfIntroItemContent="
				+ selfIntroItemContent + ", resumeNo=" + resumeNo + "]";
	}
	
	

}
