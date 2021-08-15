package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class SelectApplyingYnDTO {
	
	private int resumeNo;
	private int jobPostNo;
	private String jobPostApplyingStatus;
	private int memNo;
	private String resumeTitle;
	
	public SelectApplyingYnDTO() {}

	public SelectApplyingYnDTO(int resumeNo, int jobPostNo, String jobPostApplyingStatus, int memNo,
			String resumeTitle) {
		super();
		this.resumeNo = resumeNo;
		this.jobPostNo = jobPostNo;
		this.jobPostApplyingStatus = jobPostApplyingStatus;
		this.memNo = memNo;
		this.resumeTitle = resumeTitle;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostApplyingStatus() {
		return jobPostApplyingStatus;
	}

	public void setJobPostApplyingStatus(String jobPostApplyingStatus) {
		this.jobPostApplyingStatus = jobPostApplyingStatus;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	@Override
	public String toString() {
		return "SelectAppliyngYnDTO [resumeNo=" + resumeNo + ", jobPostNo=" + jobPostNo + ", jobPostApplyingStatus="
				+ jobPostApplyingStatus + ", memNo=" + memNo + ", resumeTitle=" + resumeTitle + "]";
	}	


}
