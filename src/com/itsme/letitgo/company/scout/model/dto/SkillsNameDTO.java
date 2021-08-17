package com.itsme.letitgo.company.scout.model.dto;

public class SkillsNameDTO {
	
	private String skillsName;
	
	public SkillsNameDTO() {}

	public SkillsNameDTO(String skillsName) {
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
		return "SkillsNameDTO [skillsName=" + skillsName + "]";
	}

	

}
