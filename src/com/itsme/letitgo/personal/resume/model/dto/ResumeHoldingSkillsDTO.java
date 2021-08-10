package com.itsme.letitgo.personal.resume.model.dto;

public class ResumeHoldingSkillsDTO implements java.io.Serializable {

	private int resumeNo;
	private int skillsNo;
	
	public ResumeHoldingSkillsDTO() {}

	public ResumeHoldingSkillsDTO(int resumeNo, int skillsNo) {
		super();
		this.resumeNo = resumeNo;
		this.skillsNo = skillsNo;
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

	@Override
	public String toString() {
		return "ResumeHoldingSkillsDTO [resumeNo=" + resumeNo + ", skillsNo=" + skillsNo + "]";
	}
	
	
}
