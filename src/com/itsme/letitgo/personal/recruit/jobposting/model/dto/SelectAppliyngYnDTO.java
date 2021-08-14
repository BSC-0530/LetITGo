package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class SelectAppliyngYnDTO {
	
	private int resumeNo;
	private int jobPostNo;
	private String jobPostApplyingStatus;
	private int memNo;
	
	public SelectAppliyngYnDTO() {}	
	public SelectAppliyngYnDTO(int resumeNo, int jobPostNo, String jobPostApplyingStatus, int memNo) {
		super();
		this.resumeNo = resumeNo;
		this.jobPostNo = jobPostNo;
		this.jobPostApplyingStatus = jobPostApplyingStatus;
		this.memNo = memNo;
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
	@Override
	public String toString() {
		return "SelectApplyngYnDTO [resumeNo=" + resumeNo + ", jobPostNo=" + jobPostNo + ", jobPostApplyingStatus="
				+ jobPostApplyingStatus + ", memNo=" + memNo + "]";
	}
	
	

}
