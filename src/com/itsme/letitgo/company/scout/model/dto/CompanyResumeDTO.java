package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;


public class CompanyResumeDTO implements java.io.Serializable {

	private int resumeNo;
	private int inMemNo;
	private java.sql.Date resumeWriteDate;
	private String resumeScoutStatus;
	private int jobNo;
	private String resumeTitle;
	
	public CompanyResumeDTO() {}

	public CompanyResumeDTO(int resumeNo, int inMemNo, Date resumeWriteDate, String resumeScoutStatus, int jobNo,
			String resumeTitle) {
		super();
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.resumeWriteDate = resumeWriteDate;
		this.resumeScoutStatus = resumeScoutStatus;
		this.jobNo = jobNo;
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

	public java.sql.Date getResumeWriteDate() {
		return resumeWriteDate;
	}

	public void setResumeWriteDate(java.sql.Date resumeWriteDate) {
		this.resumeWriteDate = resumeWriteDate;
	}

	public String getResumeScoutStatus() {
		return resumeScoutStatus;
	}

	public void setResumeScoutStatus(String resumeScoutStatus) {
		this.resumeScoutStatus = resumeScoutStatus;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	@Override
	public String toString() {
		return "CompanyResumeDTO [resumeNo=" + resumeNo + ", inMemNo=" + inMemNo + ", resumeWriteDate="
				+ resumeWriteDate + ", resumeScoutStatus=" + resumeScoutStatus + ", jobNo=" + jobNo + ", resumeTitle="
				+ resumeTitle + "]";
	}
	
	
	
}
