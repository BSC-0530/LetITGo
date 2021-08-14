package com.itsme.letitgo.personal.recruit.apply.model.dto;

import java.sql.Date;

public class SelectPersonlCompletedApplyDTO {

	private int jobPostNo;
	private int resumeNo;
	private String jobPostTitle;
	private String coComName;
	private java.sql.Date jobPostEnrollDate;
	private java.sql.Date jobPostDeadLine;
	private java.sql.Date jobPostApplyingDate;
	private String jobPostApplyingStatus;
	private String jobPostBrowesStatus;
	private String jobPostApplyingKinds;
	
	public SelectPersonlCompletedApplyDTO() {}

	public SelectPersonlCompletedApplyDTO(int jobPostNo, int resumeNo, String jobPostTitle, String coComName,
			Date jobPostEnrollDate, Date jobPostDeadLine, Date jobPostApplyingDate, String jobPostApplyingStatus,
			String jobPostBrowesStatus, String jobPostApplyingKinds) {
		super();
		this.jobPostNo = jobPostNo;
		this.resumeNo = resumeNo;
		this.jobPostTitle = jobPostTitle;
		this.coComName = coComName;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadLine = jobPostDeadLine;
		this.jobPostApplyingDate = jobPostApplyingDate;
		this.jobPostApplyingStatus = jobPostApplyingStatus;
		this.jobPostBrowesStatus = jobPostBrowesStatus;
		this.jobPostApplyingKinds = jobPostApplyingKinds;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public java.sql.Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(java.sql.Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public java.sql.Date getJobPostDeadLine() {
		return jobPostDeadLine;
	}

	public void setJobPostDeadLine(java.sql.Date jobPostDeadLine) {
		this.jobPostDeadLine = jobPostDeadLine;
	}

	public java.sql.Date getJobPostApplyingDate() {
		return jobPostApplyingDate;
	}

	public void setJobPostApplyingDate(java.sql.Date jobPostApplyingDate) {
		this.jobPostApplyingDate = jobPostApplyingDate;
	}

	public String getJobPostApplyingStatus() {
		return jobPostApplyingStatus;
	}

	public void setJobPostApplyingStatus(String jobPostApplyingStatus) {
		this.jobPostApplyingStatus = jobPostApplyingStatus;
	}

	public String getJobPostBrowesStatus() {
		return jobPostBrowesStatus;
	}

	public void setJobPostBrowesStatus(String jobPostBrowesStatus) {
		this.jobPostBrowesStatus = jobPostBrowesStatus;
	}

	public String getJobPostApplyingKinds() {
		return jobPostApplyingKinds;
	}

	public void setJobPostApplyingKinds(String jobPostApplyingKinds) {
		this.jobPostApplyingKinds = jobPostApplyingKinds;
	}

	@Override
	public String toString() {
		return "SelectPersonlCompletedApplyDTO [jobPostNo=" + jobPostNo + ", resumeNo=" + resumeNo + ", jobPostTitle="
				+ jobPostTitle + ", coComName=" + coComName + ", jobPostEnrollDate=" + jobPostEnrollDate
				+ ", jobPostDeadLine=" + jobPostDeadLine + ", jobPostApplyingDate=" + jobPostApplyingDate
				+ ", jobPostApplyingStatus=" + jobPostApplyingStatus + ", jobPostBrowesStatus=" + jobPostBrowesStatus
				+ ", jobPostApplyingKinds=" + jobPostApplyingKinds + "]";
	}
	
	
}
