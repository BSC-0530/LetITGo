package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

import java.sql.Date;

import com.itsme.letitgo.company.info.model.dto.CompanyAddInfoDTO;

public class JobPostingAndAddInfoDTO implements java.io.Serializable {

	private int jobPostNo;
	private int coMemNo;
	private String jobPostTitle;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private Date jobPostDeadline;
	private String jobPostContents;
	private String jobPostKinds;
	private int jobNo;
	private int skillsNo;
	private String jobPostApplying_kinds;
	private CompanyAddInfoDTO companyAddInfoDTO;
	
	public JobPostingAndAddInfoDTO() {}
	public JobPostingAndAddInfoDTO(int jobPostNo, int coMemNo, String jobPostTitle, String jobPostMinExperience,
			String jobPostMaxExperience, Date jobPostDeadline, String jobPostContents, String jobPostKinds, int jobNo,
			int skillsNo, String jobPostApplying_kinds, CompanyAddInfoDTO companyAddInfoDTO) {
		super();
		this.jobPostNo = jobPostNo;
		this.coMemNo = coMemNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostDeadline = jobPostDeadline;
		this.jobPostContents = jobPostContents;
		this.jobPostKinds = jobPostKinds;
		this.jobNo = jobNo;
		this.skillsNo = skillsNo;
		this.jobPostApplying_kinds = jobPostApplying_kinds;
		this.companyAddInfoDTO = companyAddInfoDTO;
	}
	public int getJobPostNo() {
		return jobPostNo;
	}
	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}
	public int getCoMemNo() {
		return coMemNo;
	}
	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
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
	public Date getJobPostDeadline() {
		return jobPostDeadline;
	}
	public void setJobPostDeadline(Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
	}
	public String getJobPostContents() {
		return jobPostContents;
	}
	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}
	public String getJobPostKinds() {
		return jobPostKinds;
	}
	public void setJobPostKinds(String jobPostKinds) {
		this.jobPostKinds = jobPostKinds;
	}
	public int getJobNo() {
		return jobNo;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public int getSkillsNo() {
		return skillsNo;
	}
	public void setSkillsNo(int skillsNo) {
		this.skillsNo = skillsNo;
	}
	public String getJobPostApplying_kinds() {
		return jobPostApplying_kinds;
	}
	public void setJobPostApplying_kinds(String jobPostApplying_kinds) {
		this.jobPostApplying_kinds = jobPostApplying_kinds;
	}
	public CompanyAddInfoDTO getCompanyAddInfoDTO() {
		return companyAddInfoDTO;
	}
	public void setCompanyAddInfoDTO(CompanyAddInfoDTO companyAddInfoDTO) {
		this.companyAddInfoDTO = companyAddInfoDTO;
	}
	@Override
	public String toString() {
		return "JobPostingAndAddInfoDTO [jobPostNo=" + jobPostNo + ", coMemNo=" + coMemNo + ", jobPostTitle="
				+ jobPostTitle + ", jobPostMinExperience=" + jobPostMinExperience + ", jobPostMaxExperience="
				+ jobPostMaxExperience + ", jobPostDeadline=" + jobPostDeadline + ", jobPostContents=" + jobPostContents
				+ ", jobPostKinds=" + jobPostKinds + ", jobNo=" + jobNo + ", skillsNo=" + skillsNo
				+ ", jobPostApplying_kinds=" + jobPostApplying_kinds + ", companyAddInfoDTO=" + companyAddInfoDTO + "]";
	}	
	
	
}
