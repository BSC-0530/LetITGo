package com.itsme.letitgo.personal.resume.model.dto;

import java.sql.Date;
import java.util.List;

public class DetailResumeDTO {
	
	private int resumeNo;
	private int inMemNo;
	private String resumeTitle;
	private java.sql.Date resumeWriteDate;
	private String resumeScoutStatus;
	private int jobNo;
	
	private List<PortfolioDTO> portFolioList;
	private List<ItemAndContentDTO> itemAndContentList;
	private List<AwardHistoryDTO> awardHistoryList;
	private List<EducationHistoryDTO> educationHistoryList;
	private List<LicenseHistoryDTO> licenseHistoryList;
	private List<HoldingAndSkillsDTO> holdingAndSkillsList;
	private List<CareerHistoryDTO> careerHistoryList;
	private List<JobFieldDTO> jobFieldList;
	
	public DetailResumeDTO() {}

	public DetailResumeDTO(int resumeNo, int inMemNo, String resumeTitle, Date resumeWriteDate,
			String resumeScoutStatus, int jobNo, List<PortfolioDTO> portFolioList,
			List<ItemAndContentDTO> itemAndContentList, List<AwardHistoryDTO> awardHistoryList,
			List<EducationHistoryDTO> educationHistoryList, List<LicenseHistoryDTO> licenseHistoryList,
			List<HoldingAndSkillsDTO> holdingAndSkillsList, List<CareerHistoryDTO> careerHistoryList,
			List<JobFieldDTO> jobFieldList) {
		super();
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.resumeTitle = resumeTitle;
		this.resumeWriteDate = resumeWriteDate;
		this.resumeScoutStatus = resumeScoutStatus;
		this.jobNo = jobNo;
		this.portFolioList = portFolioList;
		this.itemAndContentList = itemAndContentList;
		this.awardHistoryList = awardHistoryList;
		this.educationHistoryList = educationHistoryList;
		this.licenseHistoryList = licenseHistoryList;
		this.holdingAndSkillsList = holdingAndSkillsList;
		this.careerHistoryList = careerHistoryList;
		this.jobFieldList = jobFieldList;
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

	public String getResumeTitle() {
		return resumeTitle;
	}

	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
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

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public List<PortfolioDTO> getPortFolioList() {
		return portFolioList;
	}

	public void setPortFolioList(List<PortfolioDTO> portFolioList) {
		this.portFolioList = portFolioList;
	}

	public List<ItemAndContentDTO> getItemAndContentList() {
		return itemAndContentList;
	}

	public void setItemAndContentList(List<ItemAndContentDTO> itemAndContentList) {
		this.itemAndContentList = itemAndContentList;
	}

	public List<AwardHistoryDTO> getAwardHistoryList() {
		return awardHistoryList;
	}

	public void setAwardHistoryList(List<AwardHistoryDTO> awardHistoryList) {
		this.awardHistoryList = awardHistoryList;
	}

	public List<EducationHistoryDTO> getEducationHistoryList() {
		return educationHistoryList;
	}

	public void setEducationHistoryList(List<EducationHistoryDTO> educationHistoryList) {
		this.educationHistoryList = educationHistoryList;
	}

	public List<LicenseHistoryDTO> getLicenseHistoryList() {
		return licenseHistoryList;
	}

	public void setLicenseHistoryList(List<LicenseHistoryDTO> licenseHistoryList) {
		this.licenseHistoryList = licenseHistoryList;
	}

	public List<HoldingAndSkillsDTO> getHoldingAndSkillsList() {
		return holdingAndSkillsList;
	}

	public void setHoldingAndSkillsList(List<HoldingAndSkillsDTO> holdingAndSkillsList) {
		this.holdingAndSkillsList = holdingAndSkillsList;
	}

	public List<CareerHistoryDTO> getCareerHistoryList() {
		return careerHistoryList;
	}

	public void setCareerHistoryList(List<CareerHistoryDTO> careerHistoryList) {
		this.careerHistoryList = careerHistoryList;
	}

	public List<JobFieldDTO> getJobFieldList() {
		return jobFieldList;
	}

	public void setJobFieldList(List<JobFieldDTO> jobFieldList) {
		this.jobFieldList = jobFieldList;
	}

	@Override
	public String toString() {
		return "DetailResumeDTO [resumeNo=" + resumeNo + ", inMemNo=" + inMemNo + ", resumeTitle=" + resumeTitle
				+ ", resumeWriteDate=" + resumeWriteDate + ", resumeScoutStatus=" + resumeScoutStatus + ", jobNo="
				+ jobNo + ", portFolioList=" + portFolioList + ", itemAndContentList=" + itemAndContentList
				+ ", awardHistoryList=" + awardHistoryList + ", educationHistoryList=" + educationHistoryList
				+ ", licenseHistoryList=" + licenseHistoryList + ", holdingAndSkillsList=" + holdingAndSkillsList
				+ ", careerHistoryList=" + careerHistoryList + ", jobFieldList=" + jobFieldList + "]";
	}

	
}
