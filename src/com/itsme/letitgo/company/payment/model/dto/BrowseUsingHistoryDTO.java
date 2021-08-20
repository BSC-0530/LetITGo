package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class BrowseUsingHistoryDTO implements java.io.Serializable {
	
	private int resumeNo;
	private String resumeTitle;
	private String memName;
	private String jobName;
	private java.sql.Date productUseDate;
	
	public BrowseUsingHistoryDTO() {}

	public BrowseUsingHistoryDTO(int resumeNo, String resumeTitle, String memName, String jobName,
			Date productUseDate) {
		super();
		this.resumeNo = resumeNo;
		this.resumeTitle = resumeTitle;
		this.memName = memName;
		this.jobName = jobName;
		this.productUseDate = productUseDate;
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

	public java.sql.Date getProductUseDate() {
		return productUseDate;
	}

	public void setProductUseDate(java.sql.Date productUseDate) {
		this.productUseDate = productUseDate;
	}

	@Override
	public String toString() {
		return "BrowseUsingHistoryDTO [resumeNo=" + resumeNo + ", resumeTitle=" + resumeTitle + ", memName=" + memName
				+ ", jobName=" + jobName + ", productUseDate=" + productUseDate + "]";
	}

	


}
