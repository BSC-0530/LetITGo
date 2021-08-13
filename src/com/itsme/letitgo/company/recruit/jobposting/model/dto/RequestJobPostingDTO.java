package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;

public class RequestJobPostingDTO {

	
	private String jobPostTitle;
	private int jobNo;
	private Integer jobPostMinExperience;
	private Integer jobPostMaxExperience;
	private String jobPostContents;
	private Date jobPostEnrollDate;
	// 파일은 추가할 예정
//	private String potFilePath;
	
	public RequestJobPostingDTO() {}

	public RequestJobPostingDTO(String jobPostTitle, int jobNo, Integer jobPostMinExperience,
			Integer jobPostMaxExperience, String jobPostContents, Date jobPostEnrollDate) {
		super();
		this.jobPostTitle = jobPostTitle;
		this.jobNo = jobNo;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostContents = jobPostContents;
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public Integer getJobPostMinExperience() {
		return jobPostMinExperience;
	}

	public void setJobPostMinExperience(Integer jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}

	public Integer getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}

	public void setJobPostMaxExperience(Integer jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	@Override
	public String toString() {
		return "RequestJobPostingDTO [jobPostTitle=" + jobPostTitle + ", jobNo=" + jobNo + ", jobPostMinExperience="
				+ jobPostMinExperience + ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostContents="
				+ jobPostContents + ", jobPostEnrollDate=" + jobPostEnrollDate + "]";
	};
	
	
	
}
