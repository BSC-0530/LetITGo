package com.itsme.letitgo.company.recruit.applicant.model.dto;

public class ResumeSkillsAndNameDTO implements java.io.Serializable {

	private int resumeNo;
	private int skillsNo;
	private String skillsName;
	
	public ResumeSkillsAndNameDTO() {}

	public ResumeSkillsAndNameDTO(int resumeNo, int skillsNo, String skillsName) {
		super();
		this.resumeNo = resumeNo;
		this.skillsNo = skillsNo;
		this.skillsName = skillsName;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getSkillsNo() {
		return skillsNo;
	}

	public void setSkillsNo(int skillsNo) {
		this.skillsNo = skillsNo;
	}

	public String getSkillsName() {
		return skillsName;
	}

	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}

	@Override
	public String toString() {
		return "ResumeSkillsAndNameDTO [resumeNo=" + resumeNo + ", skillsNo=" + skillsNo + ", skillsName=" + skillsName
				+ "]";
	}


	
	
}
