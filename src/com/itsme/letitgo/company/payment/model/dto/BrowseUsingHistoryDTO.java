package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class BrowseUsingHistoryDTO implements java.io.Serializable {
	
	private String resumeTitle;
	private String memName;
	private String jobName;
	private java.sql.Date productUseDate;
	
	public BrowseUsingHistoryDTO() {}

	public BrowseUsingHistoryDTO(String resumeTitle, String memName, String jobName, Date productUseDate) {
		super();
		this.resumeTitle = resumeTitle;
		this.memName = memName;
		this.jobName = jobName;
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

	public java.sql.Date getProductUseDate() {
		return productUseDate;
	}

	public void setProductUseDate(java.sql.Date productUseDate) {
		this.productUseDate = productUseDate;
	}

	@Override
	public String toString() {
		return "BrowseUsingHistroyDTO [resumeTitle=" + resumeTitle + ", memName=" + memName + ", jobName=" + jobName
				+ ", productUseDate=" + productUseDate + "]";
	}

	
	

}
