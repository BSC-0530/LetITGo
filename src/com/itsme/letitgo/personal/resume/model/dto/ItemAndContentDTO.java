package com.itsme.letitgo.personal.resume.model.dto;

public class ItemAndContentDTO {
	
	private int selfIntroItemNo;
	private String selfIntroItemName;
	
	private SelfIntroductionContentDTO selfIntroContent;
	
	public ItemAndContentDTO() {}

	public ItemAndContentDTO(int selfIntroItemNo, String selfIntroItemName,
			SelfIntroductionContentDTO selfIntroContent) {
		super();
		this.selfIntroItemNo = selfIntroItemNo;
		this.selfIntroItemName = selfIntroItemName;
		this.selfIntroContent = selfIntroContent;
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

	public SelfIntroductionContentDTO getSelfIntroContent() {
		return selfIntroContent;
	}

	public void setSelfIntroContent(SelfIntroductionContentDTO selfIntroContent) {
		this.selfIntroContent = selfIntroContent;
	}

	@Override
	public String toString() {
		return "ItemAndContentDTO [selfIntroItemNo=" + selfIntroItemNo + ", selfIntroItemName=" + selfIntroItemName
				+ ", selfIntroContent=" + selfIntroContent + "]";
	}
	
	

}
