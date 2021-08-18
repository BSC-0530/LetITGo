package com.itsme.letitgo.member.board.notice.model.dto;

import java.sql.Date;

public class GuideLineDTO {

	private int postNo;								//게시물 번호
	private String postTitle; 						//제목
	private String postContent;						//내용
	private java.sql.Date postRegistrationDate;		//등록일자		
	private String postKinds;						//분류
	private java.sql.Date postModifiedDate;			//수정일자
	private String postExposureStatus;				//노출여부
	private int managerMemberNo;					//관리자회원 번호
	
	public GuideLineDTO() {}

	public GuideLineDTO(int postNo, String postTitle, String postContent, Date postRegistrationDate, String postKinds,
			Date postModifiedDate, String postExposureStatus, int managerMemberNo) {
		super();
		this.postNo = postNo;
		this.postTitle = postTitle;
		this.postContent = postContent;
		this.postRegistrationDate = postRegistrationDate;
		this.postKinds = postKinds;
		this.postModifiedDate = postModifiedDate;
		this.postExposureStatus = postExposureStatus;
		this.managerMemberNo = managerMemberNo;
	}

	public int getPostNo() {
		return postNo;
	}

	public String getPostTitle() {
		return postTitle;
	}

	public String getPostContent() {
		return postContent;
	}

	public java.sql.Date getPostRegistrationDate() {
		return postRegistrationDate;
	}

	public String getPostKinds() {
		return postKinds;
	}

	public java.sql.Date getPostModifiedDate() {
		return postModifiedDate;
	}

	public String getPostExposureStatus() {
		return postExposureStatus;
	}

	public int getManagerMemberNo() {
		return managerMemberNo;
	}

	public void setPostNo(int postNo) {
		this.postNo = postNo;
	}

	public void setPostTitle(String postTitle) {
		this.postTitle = postTitle;
	}

	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}

	public void setPostRegistrationDate(java.sql.Date postRegistrationDate) {
		this.postRegistrationDate = postRegistrationDate;
	}

	public void setPostKinds(String postKinds) {
		this.postKinds = postKinds;
	}

	public void setPostModifiedDate(java.sql.Date postModifiedDate) {
		this.postModifiedDate = postModifiedDate;
	}

	public void setPostExposureStatus(String postExposureStatus) {
		this.postExposureStatus = postExposureStatus;
	}

	public void setManagerMemberNo(int managerMemberNo) {
		this.managerMemberNo = managerMemberNo;
	}

	@Override
	public String toString() {
		return "GuideLineDTO [postNo=" + postNo + ", postTitle=" + postTitle + ", postContent=" + postContent
				+ ", postRegistrationDate=" + postRegistrationDate + ", postKinds=" + postKinds + ", postModifiedDate="
				+ postModifiedDate + ", postExposureStatus=" + postExposureStatus + ", managerMemberNo="
				+ managerMemberNo + "]";
	}

	
	
}

