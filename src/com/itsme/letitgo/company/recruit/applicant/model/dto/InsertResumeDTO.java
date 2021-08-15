package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.sql.Date;

public class InsertResumeDTO implements java.io.Serializable {
	
//	------- resume
	private int resumeNo;
	private int inMemNo;
	private java.sql.Date resumeWriteDate;
	private String resumeScoutStatus;
	private Integer jobNo;
	private String resumeTitle;
	
//	------- career
	private Integer carNo;
	private String carComName;
	private java.sql.Date carHireDate;
	private java.sql.Date carEntDate;
	private String carStatus;
	private String carDeptName;
	private String carJobName;
	private String carWorkField;
	private String projectName;
	private java.sql.Date projectStartDate;
	private java.sql.Date projectEndDate;
	private String projectContent;
	
//	------- portfolio
	private Integer potNo;
	private String potKinds;
	private String potLinkAddress;
	private String potFilePath;
	private String potFileOriginalName;
	private String potFileName;
	
//	------- introduction
	private Integer selfIntroItemNo;
	private String selfIntroItemContent;
	
//	------- license
	private Integer licenseNo;
	private String licenseName;
	private String licenseAgency;
	private java.sql.Date licenseDate;
	
//	------- education
	private Integer eduNo;
	private String eduName;
	private String eduAgency;
	private java.sql.Date eduStartDate;
	private java.sql.Date eduEndDate;
	private String eduContent;
	
//	------- award
	private Integer awdNo;
	private String awdName;
	private String awdAgency;
	private java.sql.Date awdDate;
	private String awdContent;
	
	public InsertResumeDTO() {}

	public InsertResumeDTO(int resumeNo, int inMemNo, Date resumeWriteDate, String resumeScoutStatus, Integer jobNo,
			String resumeTitle, Integer carNo, String carComName, Date carHireDate, Date carEntDate, String carStatus,
			String carDeptName, String carJobName, String carWorkField, String projectName, Date projectStartDate,
			Date projectEndDate, String projectContent, Integer potNo, String potKinds, String potLinkAddress,
			String potFilePath, String potFileOriginalName, String potFileName, Integer selfIntroItemNo,
			String selfIntroItemContent, Integer licenseNo, String licenseName, String licenseAgency, Date licenseDate,
			Integer eduNo, String eduName, String eduAgency, Date eduStartDate, Date eduEndDate, String eduContent,
			Integer awdNo, String awdName, String awdAgency, Date awdDate, String awdContent) {
		super();
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.resumeWriteDate = resumeWriteDate;
		this.resumeScoutStatus = resumeScoutStatus;
		this.jobNo = jobNo;
		this.resumeTitle = resumeTitle;
		this.carNo = carNo;
		this.carComName = carComName;
		this.carHireDate = carHireDate;
		this.carEntDate = carEntDate;
		this.carStatus = carStatus;
		this.carDeptName = carDeptName;
		this.carJobName = carJobName;
		this.carWorkField = carWorkField;
		this.projectName = projectName;
		this.projectStartDate = projectStartDate;
		this.projectEndDate = projectEndDate;
		this.projectContent = projectContent;
		this.potNo = potNo;
		this.potKinds = potKinds;
		this.potLinkAddress = potLinkAddress;
		this.potFilePath = potFilePath;
		this.potFileOriginalName = potFileOriginalName;
		this.potFileName = potFileName;
		this.selfIntroItemNo = selfIntroItemNo;
		this.selfIntroItemContent = selfIntroItemContent;
		this.licenseNo = licenseNo;
		this.licenseName = licenseName;
		this.licenseAgency = licenseAgency;
		this.licenseDate = licenseDate;
		this.eduNo = eduNo;
		this.eduName = eduName;
		this.eduAgency = eduAgency;
		this.eduStartDate = eduStartDate;
		this.eduEndDate = eduEndDate;
		this.eduContent = eduContent;
		this.awdNo = awdNo;
		this.awdName = awdName;
		this.awdAgency = awdAgency;
		this.awdDate = awdDate;
		this.awdContent = awdContent;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getInMemNo() {
		return inMemNo;
	}

	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}

	public java.sql.Date getResumeWriteDate() {
		return resumeWriteDate;
	}

	public void setResumeWriteDate(java.sql.Date resumeWriteDate) {
		this.resumeWriteDate = resumeWriteDate;
	}

	public String getResumeScoutStatus() {
		return resumeScoutStatus;
	}

	public void setResumeScoutStatus(String resumeScoutStatus) {
		this.resumeScoutStatus = resumeScoutStatus;
	}

	public Integer getJobNo() {
		return jobNo;
	}

	public void setJobNo(Integer jobNo) {
		this.jobNo = jobNo;
	}

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}

	public Integer getCarNo() {
		return carNo;
	}

	public void setCarNo(Integer carNo) {
		this.carNo = carNo;
	}

	public String getCarComName() {
		return carComName;
	}

	public void setCarComName(String carComName) {
		this.carComName = carComName;
	}

	public java.sql.Date getCarHireDate() {
		return carHireDate;
	}

	public void setCarHireDate(java.sql.Date carHireDate) {
		this.carHireDate = carHireDate;
	}

	public java.sql.Date getCarEntDate() {
		return carEntDate;
	}

	public void setCarEntDate(java.sql.Date carEntDate) {
		this.carEntDate = carEntDate;
	}

	public String getCarStatus() {
		return carStatus;
	}

	public void setCarStatus(String carStatus) {
		this.carStatus = carStatus;
	}

	public String getCarDeptName() {
		return carDeptName;
	}

	public void setCarDeptName(String carDeptName) {
		this.carDeptName = carDeptName;
	}

	public String getCarJobName() {
		return carJobName;
	}

	public void setCarJobName(String carJobName) {
		this.carJobName = carJobName;
	}

	public String getCarWorkField() {
		return carWorkField;
	}

	public void setCarWorkField(String carWorkField) {
		this.carWorkField = carWorkField;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public java.sql.Date getProjectStartDate() {
		return projectStartDate;
	}

	public void setProjectStartDate(java.sql.Date projectStartDate) {
		this.projectStartDate = projectStartDate;
	}

	public java.sql.Date getProjectEndDate() {
		return projectEndDate;
	}

	public void setProjectEndDate(java.sql.Date projectEndDate) {
		this.projectEndDate = projectEndDate;
	}

	public String getProjectContent() {
		return projectContent;
	}

	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}

	public Integer getPotNo() {
		return potNo;
	}

	public void setPotNo(Integer potNo) {
		this.potNo = potNo;
	}

	public String getPotKinds() {
		return potKinds;
	}

	public void setPotKinds(String potKinds) {
		this.potKinds = potKinds;
	}

	public String getPotLinkAddress() {
		return potLinkAddress;
	}

	public void setPotLinkAddress(String potLinkAddress) {
		this.potLinkAddress = potLinkAddress;
	}

	public String getPotFilePath() {
		return potFilePath;
	}

	public void setPotFilePath(String potFilePath) {
		this.potFilePath = potFilePath;
	}

	public String getPotFileOriginalName() {
		return potFileOriginalName;
	}

	public void setPotFileOriginalName(String potFileOriginalName) {
		this.potFileOriginalName = potFileOriginalName;
	}

	public String getPotFileName() {
		return potFileName;
	}

	public void setPotFileName(String potFileName) {
		this.potFileName = potFileName;
	}

	public Integer getSelfIntroItemNo() {
		return selfIntroItemNo;
	}

	public void setSelfIntroItemNo(Integer selfIntroItemNo) {
		this.selfIntroItemNo = selfIntroItemNo;
	}

	public String getSelfIntroItemContent() {
		return selfIntroItemContent;
	}

	public void setSelfIntroItemContent(String selfIntroItemContent) {
		this.selfIntroItemContent = selfIntroItemContent;
	}

	public Integer getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(Integer licenseNo) {
		this.licenseNo = licenseNo;
	}

	public String getLicenseName() {
		return licenseName;
	}

	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}

	public String getLicenseAgency() {
		return licenseAgency;
	}

	public void setLicenseAgency(String licenseAgency) {
		this.licenseAgency = licenseAgency;
	}

	public java.sql.Date getLicenseDate() {
		return licenseDate;
	}

	public void setLicenseDate(java.sql.Date licenseDate) {
		this.licenseDate = licenseDate;
	}

	public Integer getEduNo() {
		return eduNo;
	}

	public void setEduNo(Integer eduNo) {
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

	public Integer getAwdNo() {
		return awdNo;
	}

	public void setAwdNo(Integer awdNo) {
		this.awdNo = awdNo;
	}

	public String getAwdName() {
		return awdName;
	}

	public void setAwdName(String awdName) {
		this.awdName = awdName;
	}

	public String getAwdAgency() {
		return awdAgency;
	}

	public void setAwdAgency(String awdAgency) {
		this.awdAgency = awdAgency;
	}

	public java.sql.Date getAwdDate() {
		return awdDate;
	}

	public void setAwdDate(java.sql.Date awdDate) {
		this.awdDate = awdDate;
	}

	public String getAwdContent() {
		return awdContent;
	}

	public void setAwdContent(String awdContent) {
		this.awdContent = awdContent;
	}

	@Override
	public String toString() {
		return "InsertResumeDTO [resumeNo=" + resumeNo + ", inMemNo=" + inMemNo + ", resumeWriteDate=" + resumeWriteDate
				+ ", resumeScoutStatus=" + resumeScoutStatus + ", jobNo=" + jobNo + ", resumeTitle=" + resumeTitle
				+ ", carNo=" + carNo + ", carComName=" + carComName + ", carHireDate=" + carHireDate + ", carEntDate="
				+ carEntDate + ", carStatus=" + carStatus + ", carDeptName=" + carDeptName + ", carJobName="
				+ carJobName + ", carWorkField=" + carWorkField + ", projectName=" + projectName + ", projectStartDate="
				+ projectStartDate + ", projectEndDate=" + projectEndDate + ", projectContent=" + projectContent
				+ ", potNo=" + potNo + ", potKinds=" + potKinds + ", potLinkAddress=" + potLinkAddress
				+ ", potFilePath=" + potFilePath + ", potFileOriginalName=" + potFileOriginalName + ", potFileName="
				+ potFileName + ", selfIntroItemNo=" + selfIntroItemNo + ", selfIntroItemContent="
				+ selfIntroItemContent + ", licenseNo=" + licenseNo + ", licenseName=" + licenseName
				+ ", licenseAgency=" + licenseAgency + ", licenseDate=" + licenseDate + ", eduNo=" + eduNo
				+ ", eduName=" + eduName + ", eduAgency=" + eduAgency + ", eduStartDate=" + eduStartDate
				+ ", eduEndDate=" + eduEndDate + ", eduContent=" + eduContent + ", awdNo=" + awdNo + ", awdName="
				+ awdName + ", awdAgency=" + awdAgency + ", awdDate=" + awdDate + ", awdContent=" + awdContent + "]";
	}
	
	

}
