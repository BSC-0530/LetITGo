package com.itsme.letitgo.personal.resume.model.dto;

public class SelfIntroductionItemDTO implements java.io.Serializable {
	
	private int selfIntroItemNo;
	private String selfIntroItemName;
	
	public SelfIntroductionItemDTO() {}
	
	public SelfIntroductionItemDTO(int selfIntroItemNo, String selfIntroItemName) {
		super();
		this.selfIntroItemNo = selfIntroItemNo;
		this.selfIntroItemName = selfIntroItemName;
	}

	public int getSelfIntroItemNo() {
		return selfIntroItemNo;
	}

	public void setSelfIntroItemNo(int selfIntroItemNo) {
		this.selfIntroItemNo = selfIntroItemNo;
	}

	public String getSelfIntroItemName() {
		return selfIntroItemName;
	}

	public void setSelfIntroItemName(String selfIntroItemName) {
		this.selfIntroItemName = selfIntroItemName;
	}

	@Override
	public String toString() {
		return "SelfIntroductionItemDTO [selfIntroItemNo=" + selfIntroItemNo + ", selfIntroItemName="
				+ selfIntroItemName + "]";
	}
	
	

}
