package com.itsme.letitgo.company.payment.model.dto;

public class HoldingRequestingSkillsDTO implements java.io.Serializable {
	
	private String skillsName;
	
	public HoldingRequestingSkillsDTO() {}

	public HoldingRequestingSkillsDTO(String skillsName) {
		super();
		this.skillsName = skillsName;
	}

	public String getSkillsName() {
		return skillsName;
	}

	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}

	@Override
	public String toString() {
		return "HoldingRequestingSkillsDTO [skillsName=" + skillsName + "]";
	}
	
	
}
