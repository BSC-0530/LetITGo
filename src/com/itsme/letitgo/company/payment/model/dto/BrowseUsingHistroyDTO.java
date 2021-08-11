package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class BrowseUsingHistroyDTO {
	
	private String resumeTitle;
	private String memName;
	private String jobName;
	private String skillsName;
	private java.sql.Date productUseDate;
	
	public BrowseUsingHistroyDTO() {}

	public BrowseUsingHistroyDTO(String resumeTitle, String memName, String jobName, String skillsName,
			Date productUseDate) {
		super();
		this.resumeTitle = resumeTitle;
		this.memName = memName;
		this.jobName = jobName;
		this.skillsName = skillsName;
		this.productUseDate = productUseDate;
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

	public String getSkillsName() {
		return skillsName;
	}

	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}

	public java.sql.Date getProductUseDate() {
		return productUseDate;
	}

	public void setProductUseDate(java.sql.Date productUseDate) {
		this.productUseDate = productUseDate;
	}

	@Override
	public String toString() {
		return "BrowseUsingHistroyDTO [resumeTitle=" + resumeTitle + ", memName=" + memName + ", jobName=" + jobName
				+ ", skillsName=" + skillsName + ", productUseDate=" + productUseDate + "]";
	}

	
	

}
