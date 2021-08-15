package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;

public class SelectCoMyJobPostingDTO {
	
	private int coMemNo;
	private int jobPostNo;
	private String jobPostTitle;
	private String jobPostContents;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private java.sql.Date jobPostEnrollDate;
	private java.sql.Date jobPostDeadline;
	private String jobPostKinds;
	private String exposureUseCheck;
	
	public SelectCoMyJobPostingDTO() {}

	public SelectCoMyJobPostingDTO(int coMemNo, int jobPostNo, String jobPostTitle, String jobPostContents,
			String jobPostMinExperience, String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline,
			String jobPostKinds, String exposureUseCheck) {
		super();
		this.coMemNo = coMemNo;
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostContents = jobPostContents;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
		this.jobPostKinds = jobPostKinds;
		this.exposureUseCheck = exposureUseCheck;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
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

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public String getJobPostMinExperience() {
		return jobPostMinExperience;
	}

	public void setJobPostMinExperience(String jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}

	public String getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}

	public void setJobPostMaxExperience(String jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}

	public java.sql.Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(java.sql.Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public java.sql.Date getJobPostDeadline() {
		return jobPostDeadline;
	}

	public void setJobPostDeadline(java.sql.Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
	}

	public String getJobPostKinds() {
		return jobPostKinds;
	}

	public void setJobPostKinds(String jobPostKinds) {
		this.jobPostKinds = jobPostKinds;
	}

	public String getExposureUseCheck() {
		return exposureUseCheck;
	}

	public void setExposureUseCheck(String exposureUseCheck) {
		this.exposureUseCheck = exposureUseCheck;
	}

	@Override
	public String toString() {
		return "SelectCoMyJobPostingDTO [coMemNo=" + coMemNo + ", jobPostNo=" + jobPostNo + ", jobPostTitle="
				+ jobPostTitle + ", jobPostContents=" + jobPostContents + ", jobPostMinExperience="
				+ jobPostMinExperience + ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostEnrollDate="
				+ jobPostEnrollDate + ", jobPostDeadline=" + jobPostDeadline + ", jobPostKinds=" + jobPostKinds
				+ ", exposureUseCheck=" + exposureUseCheck + "]";
	}


	
	
}
