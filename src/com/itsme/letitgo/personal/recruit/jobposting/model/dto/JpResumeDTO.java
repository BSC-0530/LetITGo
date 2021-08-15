package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

import java.sql.Date;

public class JpResumeDTO implements java.io.Serializable {
	
	private int resumeNo;
	private int inMemNo;
	private Date resumeWriteDate;
	private String resumeScoutStatus;
	private String resumeTitle;
	
	public JpResumeDTO() {}

	public JpResumeDTO(int resumeNo, int inMemNo, Date resumeWriteDate, String resumeScoutStatus, String resumeTitle) {
		super();
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.resumeWriteDate = resumeWriteDate;
		this.resumeScoutStatus = resumeScoutStatus;
		this.resumeTitle = resumeTitle;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getInMemNo() {
		return inMemNo;
	}

	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}

	public Date getResumeWriteDate() {
		return resumeWriteDate;
	}

	public void setResumeWriteDate(Date resumeWriteDate) {
		this.resumeWriteDate = resumeWriteDate;
	}

	public String getResumeScoutStatus() {
		return resumeScoutStatus;
	}

	public void setResumeScoutStatus(String resumeScoutStatus) {
		this.resumeScoutStatus = resumeScoutStatus;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	@Override
	public String toString() {
		return "JpResumeDTO [resumeNo=" + resumeNo + ", inMemNo=" + inMemNo + ", resumeWriteDate=" + resumeWriteDate
				+ ", resumeScoutStatus=" + resumeScoutStatus + ", resumeTitle=" + resumeTitle + "]";
	};
	
	

}
