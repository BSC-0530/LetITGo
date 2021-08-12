package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;

public class SelectCoMyJobPostingDTO {
	
	private int coMemNo;
	private int jobPostNo;
	private String jobPostTitle;
	private String jobPostKinds;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private Date jobPostEnrollDate;
	private Date jobPostDeadline;
	private String exposureUseCheck;
	
	public SelectCoMyJobPostingDTO() {}

	public SelectCoMyJobPostingDTO(int coMemNo, int jobPostNo, String jobPostTitle, String jobPostKinds,
			String jobPostMinExperience, String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline,
			String exposureUseCheck) {
		super();
		this.coMemNo = coMemNo;
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostKinds = jobPostKinds;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
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

	public String getJobPostKinds() {
		return jobPostKinds;
	}

	public void setJobPostKinds(String jobPostKinds) {
		this.jobPostKinds = jobPostKinds;
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

	public Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public Date getJobPostDeadline() {
		return jobPostDeadline;
	}

	public void setJobPostDeadline(Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
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
				+ jobPostTitle + ", jobPostKinds=" + jobPostKinds + ", jobPostMinExperience=" + jobPostMinExperience
				+ ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostEnrollDate=" + jobPostEnrollDate
				+ ", jobPostDeadline=" + jobPostDeadline + ", exposureUseCheck=" + exposureUseCheck + "]";
	};
	
	
	
}
