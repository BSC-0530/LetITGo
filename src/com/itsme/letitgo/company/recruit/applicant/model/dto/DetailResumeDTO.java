package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.sql.Date;
import java.util.List;

public class DetailResumeDTO implements java.io.Serializable {
	
	private int resumeNo;
	private String resumeTitle;
	private int jobNo;
	private String jobName;
	private String memName;
	private String memPhone;
	private String memEmail;
	private String memFilePath;
	
	public DetailResumeDTO() {}

	public DetailResumeDTO(int resumeNo, String resumeTitle, int jobNo, String jobName, String memName, String memPhone,
			String memEmail, String memFilePath) {
		super();
		this.resumeNo = resumeNo;
		this.resumeTitle = resumeTitle;
		this.jobNo = jobNo;
		this.jobName = jobName;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memEmail = memEmail;
		this.memFilePath = memFilePath;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
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

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemFilePath() {
		return memFilePath;
	}

	public void setMemFilePath(String memFilePath) {
		this.memFilePath = memFilePath;
	}

	@Override
	public String toString() {
		return "DetailResumeDTO [resumeNo=" + resumeNo + ", resumeTitle=" + resumeTitle + ", jobNo=" + jobNo
				+ ", jobName=" + jobName + ", memName=" + memName + ", memPhone=" + memPhone + ", memEmail=" + memEmail
				+ ", memFilePath=" + memFilePath + "]";
	}

	
	
	
	
}
