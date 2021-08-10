package com.itsme.letitgo.company.scout.model.dto;

public class CompanySkillsDTO implements java.io.Serializable {

	private int skillsNo;
	private String skillsName;
	private int categoryNo;
	
	public CompanySkillsDTO() {}

	public CompanySkillsDTO(int skillsNo, String skillsName, int categoryNo) {
		super();
		this.skillsNo = skillsNo;
		this.skillsName = skillsName;
		this.categoryNo = categoryNo;
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

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	@Override
	public String toString() {
		return "SkillsDTO [skillsNo=" + skillsNo + ", skillsName=" + skillsName + ", categoryNo=" + categoryNo + "]";
	}
	
}
