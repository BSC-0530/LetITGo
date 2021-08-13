package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;

public class BrosweHistoryDTO {
	
	private int resumeNo;
	private String resumeTitle;
	private String memName;
	private String jobName;
	private String resumeBrowseKinds;
	
	public BrosweHistoryDTO() {}

	public BrosweHistoryDTO(int resumeNo, String resumeTitle, String memName, String jobName,
			String resumeBrowseKinds) {
		super();
		this.resumeNo = resumeNo;
		this.resumeTitle = resumeTitle;
		this.memName = memName;
		this.jobName = jobName;
		this.resumeBrowseKinds = resumeBrowseKinds;
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

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getResumeBrowseKinds() {
		return resumeBrowseKinds;
	}

	public void setResumeBrowseKinds(String resumeBrowseKinds) {
		this.resumeBrowseKinds = resumeBrowseKinds;
	}

	@Override
	public String toString() {
		return "BrosweHistoryDTO [resumeNo=" + resumeNo + ", resumeTitle=" + resumeTitle + ", memName=" + memName
				+ ", jobName=" + jobName + ", resumeBrowseKinds=" + resumeBrowseKinds + "]";
	}

	
	
}
