package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class RequestJobPostingDTO {

	private int coMemNo;
	private int jobPostNo; // 등록한 공고 번호를 조회해 다른 테이블에 동시에  insert해주기 위해 dto에 담아오기 위해 필드에 변수 선언
	private String jobPostTitle;
	private int jobNo;
	private int jobPostMinExperience;
	private int jobPostMaxExperience;
	private java.sql.Date jobPostDeadLine;
	private List<Integer> skillsCodeList;
	private int updateJobPostNo;	
	private String jobPostContents;				// 주요업무
	private String qualificationRequirements; 	// 자격요건
	private String preferentialMatters; 		// 우대사항
	private String benefitAndWelfare;			// 혜택 및 복지
	private String companyResumeLink;			// 자사 이력서 양식 링크
	
	
	public RequestJobPostingDTO() {}


	public RequestJobPostingDTO(int coMemNo, int jobPostNo, String jobPostTitle, int jobNo, int jobPostMinExperience,
			int jobPostMaxExperience, Date jobPostDeadLine, List<Integer> skillsCodeList, int updateJobPostNo,
			String jobPostContents, String qualificationRequirements, String preferentialMatters,
			String benefitAndWelfare, String companyResumeLink) {
		super();
		this.coMemNo = coMemNo;
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobNo = jobNo;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostDeadLine = jobPostDeadLine;
		this.skillsCodeList = skillsCodeList;
		this.updateJobPostNo = updateJobPostNo;
		this.jobPostContents = jobPostContents;
		this.qualificationRequirements = qualificationRequirements;
		this.preferentialMatters = preferentialMatters;
		this.benefitAndWelfare = benefitAndWelfare;
		this.companyResumeLink = companyResumeLink;
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


	public int getJobNo() {
		return jobNo;
	}


	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}


	public int getJobPostMinExperience() {
		return jobPostMinExperience;
	}


	public void setJobPostMinExperience(int jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}


	public int getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}


	public void setJobPostMaxExperience(int jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}


	public java.sql.Date getJobPostDeadLine() {
		return jobPostDeadLine;
	}


	public void setJobPostDeadLine(java.sql.Date jobPostDeadLine) {
		this.jobPostDeadLine = jobPostDeadLine;
	}


	public List<Integer> getSkillsCodeList() {
		return skillsCodeList;
	}


	public void setSkillsCodeList(List<Integer> skillsCodeList) {
		this.skillsCodeList = skillsCodeList;
	}


	public int getUpdateJobPostNo() {
		return updateJobPostNo;
	}


	public void setUpdateJobPostNo(int updateJobPostNo) {
		this.updateJobPostNo = updateJobPostNo;
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


	@Override
	public String toString() {
		return "RequestJobPostingDTO [coMemNo=" + coMemNo + ", jobPostNo=" + jobPostNo + ", jobPostTitle="
				+ jobPostTitle + ", jobNo=" + jobNo + ", jobPostMinExperience=" + jobPostMinExperience
				+ ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostDeadLine=" + jobPostDeadLine
				+ ", skillsCodeList=" + skillsCodeList + ", updateJobPostNo=" + updateJobPostNo + ", jobPostContents="
				+ jobPostContents + ", qualificationRequirements=" + qualificationRequirements
				+ ", preferentialMatters=" + preferentialMatters + ", benefitAndWelfare=" + benefitAndWelfare
				+ ", companyResumeLink=" + companyResumeLink + "]";
	}
	
	
	
	
}
