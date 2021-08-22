package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;

public class SelectCoMyJobPostingDTO {
	
	private int coMemNo;
	private int jobPostNo;
	private String jobPostTitle;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private java.sql.Date jobPostEnrollDate;
	private java.sql.Date jobPostDeadline;
	private String jobPostKinds;
	private String exposureUseCheck;
	private String jobPostContents;				// 주요업무
	private String qualificationRequirements; 	// 자격요건
	private String preferentialMatters; 		// 우대사항
	private String benefitAndWelfare;			// 혜택 및 복지
	private String companyResumeLink;			// 자사 이력서 양식 링크
	private java.sql.Date exposureEndDate;
	
	public SelectCoMyJobPostingDTO() {}

	public SelectCoMyJobPostingDTO(int coMemNo, int jobPostNo, String jobPostTitle, String jobPostMinExperience,
			String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline, String jobPostKinds,
			String exposureUseCheck, String jobPostContents, String qualificationRequirements,
			String preferentialMatters, String benefitAndWelfare, String companyResumeLink, Date exposureEndDate) {
		super();
		this.coMemNo = coMemNo;
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
		this.jobPostKinds = jobPostKinds;
		this.exposureUseCheck = exposureUseCheck;
		this.jobPostContents = jobPostContents;
		this.qualificationRequirements = qualificationRequirements;
		this.preferentialMatters = preferentialMatters;
		this.benefitAndWelfare = benefitAndWelfare;
		this.companyResumeLink = companyResumeLink;
		this.exposureEndDate = exposureEndDate;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public String getJobPostMinExperience() {
		return jobPostMinExperience;
	}

	public void setJobPostMinExperience(String jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}

	public String getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}

	public void setJobPostMaxExperience(String jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}

	public java.sql.Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(java.sql.Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public java.sql.Date getJobPostDeadline() {
		return jobPostDeadline;
	}

	public void setJobPostDeadline(java.sql.Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
	}

	public String getJobPostKinds() {
		return jobPostKinds;
	}

	public void setJobPostKinds(String jobPostKinds) {
		this.jobPostKinds = jobPostKinds;
	}

	public String getExposureUseCheck() {
		return exposureUseCheck;
	}

	public void setExposureUseCheck(String exposureUseCheck) {
		this.exposureUseCheck = exposureUseCheck;
	}

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public String getQualificationRequirements() {
		return qualificationRequirements;
	}

	public void setQualificationRequirements(String qualificationRequirements) {
		this.qualificationRequirements = qualificationRequirements;
	}

	public String getPreferentialMatters() {
		return preferentialMatters;
	}

	public void setPreferentialMatters(String preferentialMatters) {
		this.preferentialMatters = preferentialMatters;
	}

	public String getBenefitAndWelfare() {
		return benefitAndWelfare;
	}

	public void setBenefitAndWelfare(String benefitAndWelfare) {
		this.benefitAndWelfare = benefitAndWelfare;
	}

	public String getCompanyResumeLink() {
		return companyResumeLink;
	}

	public void setCompanyResumeLink(String companyResumeLink) {
		this.companyResumeLink = companyResumeLink;
	}

	public java.sql.Date getExposureEndDate() {
		return exposureEndDate;
	}

	public void setExposureEndDate(java.sql.Date exposureEndDate) {
		this.exposureEndDate = exposureEndDate;
	}

	@Override
	public String toString() {
		return "SelectCoMyJobPostingDTO [coMemNo=" + coMemNo + ", jobPostNo=" + jobPostNo + ", jobPostTitle="
				+ jobPostTitle + ", jobPostMinExperience=" + jobPostMinExperience + ", jobPostMaxExperience="
				+ jobPostMaxExperience + ", jobPostEnrollDate=" + jobPostEnrollDate + ", jobPostDeadline="
				+ jobPostDeadline + ", jobPostKinds=" + jobPostKinds + ", exposureUseCheck=" + exposureUseCheck
				+ ", jobPostContents=" + jobPostContents + ", qualificationRequirements=" + qualificationRequirements
				+ ", preferentialMatters=" + preferentialMatters + ", benefitAndWelfare=" + benefitAndWelfare
				+ ", companyResumeLink=" + companyResumeLink + ", exposureEndDate=" + exposureEndDate + "]";
	}
	
	
}
