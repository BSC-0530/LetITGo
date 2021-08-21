package com.itsme.letitgo.company.payment.model.dto;

public class HoldingRequestingSkillsDTO implements java.io.Serializable {
	
	private String jobPostNo;
	private String resumeNo;
	private String skillsName;
	
	public HoldingRequestingSkillsDTO() {}

	public HoldingRequestingSkillsDTO(String jobPostNo, String resumeNo, String skillsName) {
		super();
		this.jobPostNo = jobPostNo;
		this.resumeNo = resumeNo;
		this.skillsName = skillsName;
	}

	public String getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(String jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(String resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getSkillsName() {
		return skillsName;
	}

	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}

	@Override
	public String toString() {
		return "HoldingRequestingSkillsDTO [jobPostNo=" + jobPostNo + ", resumeNo=" + resumeNo + ", skillsName="
				+ skillsName + "]";
	}

	
	
	
	
}
