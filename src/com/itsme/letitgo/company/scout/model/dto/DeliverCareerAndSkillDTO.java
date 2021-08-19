package com.itsme.letitgo.company.scout.model.dto;

public class DeliverCareerAndSkillDTO {
	
	private int careerValue;
	private String skill;
	
	public DeliverCareerAndSkillDTO() {}

	public DeliverCareerAndSkillDTO(int careerValue, String skill) {
		super();
		this.careerValue = careerValue;
		this.skill = skill;
	}

	public int getCareerValue() {
		return careerValue;
	}

	public void setCareerValue(int careerValue) {
		this.careerValue = careerValue;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	@Override
	public String toString() {
		return "DeliverCareerAndSkillDTO [careerValue=" + careerValue + ", skill=" + skill + "]";
	}
	
	

}
