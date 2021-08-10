package com.itsme.letitgo.company.scout.model.dto;

public class CompanyJobFieldDTO implements java.io.Serializable{

	private int jobNo;
	private String jobName;
	
	public CompanyJobFieldDTO() {}
	
	public CompanyJobFieldDTO(int jobNo, String jobName) {
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

