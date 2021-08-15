package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.sql.Date;

public class EducationHistoryDTO implements java.io.Serializable {

	private String eduName;
	private String eduAgency;
	private java.sql.Date eduStartDate;
	private java.sql.Date eduEndDate;
	private String eduContent;
	private int resumeNo;
	private int eduNo;
	
	public EducationHistoryDTO() {}

	public EducationHistoryDTO(String eduName, String eduAgency, Date eduStartDate, Date eduEndDate, String eduContent,
			int resumeNo, int eduNo) {
		super();
		this.eduName = eduName;
		this.eduAgency = eduAgency;
		this.eduStartDate = eduStartDate;
		this.eduEndDate = eduEndDate;
		this.eduContent = eduContent;
		this.resumeNo = resumeNo;
		this.eduNo = eduNo;
	}

	public String getEduName() {
		return eduName;
	}

	public void setEduName(String eduName) {
		this.eduName = eduName;
	}

	public String getEduAgency() {
		return eduAgency;
	}

	public void setEduAgency(String eduAgency) {
		this.eduAgency = eduAgency;
	}

	public java.sql.Date getEduStartDate() {
		return eduStartDate;
	}

	public void setEduStartDate(java.sql.Date eduStartDate) {
		this.eduStartDate = eduStartDate;
	}

	public java.sql.Date getEduEndDate() {
		return eduEndDate;
	}

	public void setEduEndDate(java.sql.Date eduEndDate) {
		this.eduEndDate = eduEndDate;
	}

	public String getEduContent() {
		return eduContent;
	}

	public void setEduContent(String eduContent) {
		this.eduContent = eduContent;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getEduNo() {
		return eduNo;
	}

	public void setEduNo(int eduNo) {
		this.eduNo = eduNo;
	}

	@Override
	public String toString() {
		return "EducationHistoryDTO [eduName=" + eduName + ", eduAgency=" + eduAgency + ", eduStartDate=" + eduStartDate
				+ ", eduEndDate=" + eduEndDate + ", eduContent=" + eduContent + ", resumeNo=" + resumeNo + ", eduNo="
				+ eduNo + "]";
	}
	
	
}
