package com.itsme.letitgo.company.scout.model.dto;

public class DeliverResumeNoAndSelectedSkillDTO {
	
	private int resumeNo;
	private String skill;
	
	public DeliverResumeNoAndSelectedSkillDTO() {}

	public DeliverResumeNoAndSelectedSkillDTO(int resumeNo, String skill) {
		super();
		this.resumeNo = resumeNo;
		this.skill = skill;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	@Override
	public String toString() {
		return "DeliverResumeNoAndSelectedSkillDTO [resumeNo=" + resumeNo + ", skill=" + skill + "]";
	}
	
	

}
