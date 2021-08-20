package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class ExposureUsingHistoryDTO implements java.io.Serializable{
	
	private int jobPostNo;
	private String jobPostTitle;
	private String jobName;
	private java.sql.Date jobPostDeadline;
	private java.sql.Date exposureUseDate;
	private java.sql.Date exposureEndDate;
	
	public ExposureUsingHistoryDTO() {}

	public ExposureUsingHistoryDTO(int jobPostNo, String jobPostTitle, String jobName, Date jobPostDeadline,
			Date exposureUseDate, Date exposureEndDate) {
		super();
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobName = jobName;
		this.jobPostDeadline = jobPostDeadline;
		this.exposureUseDate = exposureUseDate;
		this.exposureEndDate = exposureEndDate;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public java.sql.Date getJobPostDeadline() {
		return jobPostDeadline;
	}

	public void setJobPostDeadline(java.sql.Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
	}

	public java.sql.Date getExposureUseDate() {
		return exposureUseDate;
	}

	public void setExposureUseDate(java.sql.Date exposureUseDate) {
		this.exposureUseDate = exposureUseDate;
	}

	public java.sql.Date getExposureEndDate() {
		return exposureEndDate;
	}

	public void setExposureEndDate(java.sql.Date exposureEndDate) {
		this.exposureEndDate = exposureEndDate;
	}

	@Override
	public String toString() {
		return "ExposureUsingHistoryDTO [jobPostNo=" + jobPostNo + ", jobPostTitle=" + jobPostTitle + ", jobName="
				+ jobName + ", jobPostDeadline=" + jobPostDeadline + ", exposureUseDate=" + exposureUseDate
				+ ", exposureEndDate=" + exposureEndDate + "]";
	}

	
	
	
}
