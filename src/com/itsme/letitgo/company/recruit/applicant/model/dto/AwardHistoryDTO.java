package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.sql.Date;

public class AwardHistoryDTO implements java.io.Serializable {
	
	private String awdName;
	private String awdAgency;
	private java.sql.Date awdDate;
	private String awdContent;
	private int resumeNo;
	private int awdNo;
	
	public AwardHistoryDTO() {}
	
	public AwardHistoryDTO(String awdName, String awdAgency, Date awdDate, String awdContent, int resumeNo, int awdNo) {
		super();
		this.awdName = awdName;
		this.awdAgency = awdAgency;
		this.awdDate = awdDate;
		this.awdContent = awdContent;
		this.resumeNo = resumeNo;
		this.awdNo = awdNo;
	}

	public String getAwdName() {
		return awdName;
	}

	public void setAwdName(String awdName) {
		this.awdName = awdName;
	}

	public String getAwdAgency() {
		return awdAgency;
	}

	public void setAwdAgency(String awdAgency) {
		this.awdAgency = awdAgency;
	}

	public java.sql.Date getAwdDate() {
		return awdDate;
	}

	public void setAwdDate(java.sql.Date awdDate) {
		this.awdDate = awdDate;
	}

	public String getAwdContent() {
		return awdContent;
	}

	public void setAwdContent(String awdContent) {
		this.awdContent = awdContent;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getAwdNo() {
		return awdNo;
	}

	public void setAwdNo(int awdNo) {
		this.awdNo = awdNo;
	}

	@Override
	public String toString() {
		return "AwardHistoryDTO [awdName=" + awdName + ", awdAgency=" + awdAgency + ", awdDate=" + awdDate
				+ ", awdContent=" + awdContent + ", resumeNo=" + resumeNo + ", awdNo=" + awdNo + "]";
	}
	
	
	
	

}
