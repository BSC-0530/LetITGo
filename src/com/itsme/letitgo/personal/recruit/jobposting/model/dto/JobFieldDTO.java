package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class JobFieldDTO {

	private int jobNo;
	private String jobName;
	public JobFieldDTO(int jobNo, String jobName) {
		super();
		this.jobNo = jobNo;
		this.jobName = jobName;
	}
	public int getJobNo() {
		return jobNo;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public String getJobName() {
		return jobName;
	}
	public void setJobName(String jobName) {
		this.jobName = jobName;
	}
	@Override
	public String toString() {
		return "JobFieldDTO [jobNo=" + jobNo + ", jobName=" + jobName + "]";
	}
	
	
}
