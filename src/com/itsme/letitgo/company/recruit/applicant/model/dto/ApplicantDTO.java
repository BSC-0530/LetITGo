package com.itsme.letitgo.company.recruit.applicant.model.dto;

import com.itsme.letitgo.common.paging.SelectCriteria;

public class ApplicantDTO implements java.io.Serializable {

	
	private int jobPostNo;
	private int resumeNo;
	private String resumeTitle;
	private String memName;
	private String jobPostBrowesStatus;
	private SelectCriteria selectCriteria;
	private String memFilePath;

	
	public ApplicantDTO() {
	
	}


	public ApplicantDTO(int jobPostNo, int resumeNo, String resumeTitle, String memName, String jobPostBrowesStatus,
			SelectCriteria selectCriteria, String memFilePath) {
		super();
		this.jobPostNo = jobPostNo;
		this.resumeNo = resumeNo;
		this.resumeTitle = resumeTitle;
		this.memName = memName;
		this.jobPostBrowesStatus = jobPostBrowesStatus;
		this.selectCriteria = selectCriteria;
		this.memFilePath = memFilePath;
	}


	public int getJobPostNo() {
		return jobPostNo;
	}


	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
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


	public String getJobPostBrowesStatus() {
		return jobPostBrowesStatus;
	}


	public void setJobPostBrowesStatus(String jobPostBrowesStatus) {
		this.jobPostBrowesStatus = jobPostBrowesStatus;
	}


	public SelectCriteria getSelectCriteria() {
		return selectCriteria;
	}


	public void setSelectCriteria(SelectCriteria selectCriteria) {
		this.selectCriteria = selectCriteria;
	}


	public String getMemFilePath() {
		return memFilePath;
	}


	public void setMemFilePath(String memFilePath) {
		this.memFilePath = memFilePath;
	}


	@Override
	public String toString() {
		return "ApplicantDTO [jobPostNo=" + jobPostNo + ", resumeNo=" + resumeNo + ", resumeTitle=" + resumeTitle
				+ ", memName=" + memName + ", jobPostBrowesStatus=" + jobPostBrowesStatus + ", selectCriteria="
				+ selectCriteria + ", memFilePath=" + memFilePath + "]";
	}
	
	
}
