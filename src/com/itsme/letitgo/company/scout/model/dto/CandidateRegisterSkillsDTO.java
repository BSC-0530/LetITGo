package com.itsme.letitgo.company.scout.model.dto;

public class CandidateRegisterSkillsDTO implements java.io.Serializable {
	
	private String skills;
	
	public CandidateRegisterSkillsDTO() {}

	public CandidateRegisterSkillsDTO(String skills) {
		super();
		this.skills = skills;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	@Override
	public String toString() {
		return "CandidateRegisterSkillsDTO [skills=" + skills + "]";
	}
	
	

}
