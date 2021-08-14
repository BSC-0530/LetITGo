package com.itsme.letitgo.personal.scout.model.dto;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.HoldingAndSkillsDTO;
import com.itsme.letitgo.personal.resume.model.dto.ItemAndContentDTO;
import com.itsme.letitgo.personal.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.personal.resume.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.PortfolioDTO;

public class ScoutDetailResumeDTO implements java.io.Serializable {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memPhone;
	
	private List<ResumeDTO> resumeList;
	private List<PortfolioDTO> portFolioList;
	private List<ItemAndContentDTO> itemAndContentList;
	private List<AwardHistoryDTO> awardHistoryList;
	private List<EducationHistoryDTO> educationHistoryList;
	private List<LicenseHistoryDTO> licenseHistoryList;
	private List<HoldingAndSkillsDTO> holdingAndSkillsList;
	private List<CareerHistoryDTO> careerHistoryList;
	private List<JobFieldDTO> jobFieldList;
	
	public ScoutDetailResumeDTO() {}
	
	public ScoutDetailResumeDTO(int memNo, String memId, String memPwd, String memName, String memEmail,
			String memPhone, List<ResumeDTO> resumeList, List<PortfolioDTO> portFolioList,
			List<ItemAndContentDTO> itemAndContentList, List<AwardHistoryDTO> awardHistoryList,
			List<EducationHistoryDTO> educationHistoryList, List<LicenseHistoryDTO> licenseHistoryList,
			List<HoldingAndSkillsDTO> holdingAndSkillsList, List<CareerHistoryDTO> careerHistoryList,
			List<JobFieldDTO> jobFieldList) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.resumeList = resumeList;
		this.portFolioList = portFolioList;
		this.itemAndContentList = itemAndContentList;
		this.awardHistoryList = awardHistoryList;
		this.educationHistoryList = educationHistoryList;
		this.licenseHistoryList = licenseHistoryList;
		this.holdingAndSkillsList = holdingAndSkillsList;
		this.careerHistoryList = careerHistoryList;
		this.jobFieldList = jobFieldList;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public List<ResumeDTO> getResumeList() {
		return resumeList;
	}

	public void setResumeList(List<ResumeDTO> resumeList) {
		this.resumeList = resumeList;
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
		return "ScoutDetailResumeDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName="
				+ memName + ", memEmail=" + memEmail + ", memPhone=" + memPhone + ", resumeList=" + resumeList
				+ ", portFolioList=" + portFolioList + ", itemAndContentList=" + itemAndContentList
				+ ", awardHistoryList=" + awardHistoryList + ", educationHistoryList=" + educationHistoryList
				+ ", licenseHistoryList=" + licenseHistoryList + ", holdingAndSkillsList=" + holdingAndSkillsList
				+ ", careerHistoryList=" + careerHistoryList + ", jobFieldList=" + jobFieldList + "]";
	}
	
	

}
