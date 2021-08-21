package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.util.List;

public class SelectDetailedResumeDTO implements java.io.Serializable {

	private DetailResumeDTO detailResume;
	private List<AwardHistoryDTO> awardHistoryList;
	private List<CareerHistoryDTO> careerHistoryList;
	private List<EducationHistoryDTO> educationHistoryList;
	private List<SelfIntroductionDTO> selfIntroductionList;
	private List<LicenseHistoryDTO> licenseHistoryList;
	private List<PortfolioDTO> portFolioList;
	private List<ResumeSkillsAndNameDTO> resumeSkillsAndNameList;
	
	public SelectDetailedResumeDTO () {}


	public SelectDetailedResumeDTO(DetailResumeDTO detailResume, List<AwardHistoryDTO> awardHistoryList,
			List<CareerHistoryDTO> careerHistoryList, List<EducationHistoryDTO> educationHistoryList,
			List<SelfIntroductionDTO> selfIntroductionList, List<LicenseHistoryDTO> licenseHistoryList,
			List<PortfolioDTO> portFolioList, List<ResumeSkillsAndNameDTO> resumeSkillsAndNameList) {
		super();
		this.detailResume = detailResume;
		this.awardHistoryList = awardHistoryList;
		this.careerHistoryList = careerHistoryList;
		this.educationHistoryList = educationHistoryList;
		this.selfIntroductionList = selfIntroductionList;
		this.licenseHistoryList = licenseHistoryList;
		this.portFolioList = portFolioList;
		this.resumeSkillsAndNameList = resumeSkillsAndNameList;
	}

	public DetailResumeDTO getDetailResume() {
		return detailResume;
	}

	public void setDetailResume(DetailResumeDTO detailResume) {
		this.detailResume = detailResume;
	}

	public List<AwardHistoryDTO> getAwardHistoryList() {
		return awardHistoryList;
	}

	public void setAwardHistoryList(List<AwardHistoryDTO> awardHistoryList) {
		this.awardHistoryList = awardHistoryList;
	}

	public List<CareerHistoryDTO> getCareerHistoryList() {
		return careerHistoryList;
	}

	public void setCareerHistoryList(List<CareerHistoryDTO> careerHistoryList) {
		this.careerHistoryList = careerHistoryList;
	}

	public List<EducationHistoryDTO> getEducationHistoryList() {
		return educationHistoryList;
	}

	public void setEducationHistoryList(List<EducationHistoryDTO> educationHistoryList) {
		this.educationHistoryList = educationHistoryList;
	}

	public List<SelfIntroductionDTO> getSelfIntroductionList() {
		return selfIntroductionList;
	}

	public void setSelfIntroductionList(List<SelfIntroductionDTO> selfIntroductionList) {
		this.selfIntroductionList = selfIntroductionList;
	}

	public List<LicenseHistoryDTO> getLicenseHistoryList() {
		return licenseHistoryList;
	}

	public void setLicenseHistoryList(List<LicenseHistoryDTO> licenseHistoryList) {
		this.licenseHistoryList = licenseHistoryList;
	}

	public List<PortfolioDTO> getPortFolioList() {
		return portFolioList;
	}

	public void setPortFolioList(List<PortfolioDTO> portFolioList) {
		this.portFolioList = portFolioList;
	}

	public List<ResumeSkillsAndNameDTO> getResumeSkillsAndNameList() {
		return resumeSkillsAndNameList;
	}

	public void setResumeSkillsAndNameList(List<ResumeSkillsAndNameDTO> resumeSkillsAndNameList) {
		this.resumeSkillsAndNameList = resumeSkillsAndNameList;
	}


	@Override
	public String toString() {
		return "SelectDetailedResumeDTO [detailResume=" + detailResume + ", awardHistoryList=" + awardHistoryList
				+ ", careerHistoryList=" + careerHistoryList + ", educationHistoryList=" + educationHistoryList
				+ ", selfIntroductionList=" + selfIntroductionList + ", licenseHistoryList=" + licenseHistoryList
				+ ", portFolioList=" + portFolioList + ", resumeSkillsAndNameList=" + resumeSkillsAndNameList + "]";
	}

	
	
	
}
