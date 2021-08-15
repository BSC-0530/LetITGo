package com.itsme.letitgo.company.recruit.applicant.model.dto;

public class SkillsAndCategoryDTO {

	private int skillsNo;
	private String skillsName;
	private int categoryNo;
	
	private SkillsCategoryDTO skillsCategory;
	
	public SkillsAndCategoryDTO() {}

	public SkillsAndCategoryDTO(int skillsNo, String skillsName, int categoryNo, SkillsCategoryDTO skillsCategory) {
		super();
		this.skillsNo = skillsNo;
		this.skillsName = skillsName;
		this.categoryNo = categoryNo;
		this.skillsCategory = skillsCategory;
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

	public SkillsCategoryDTO getSkillsCategory() {
		return skillsCategory;
	}

	public void setSkillsCategory(SkillsCategoryDTO skillsCategory) {
		this.skillsCategory = skillsCategory;
	}

	@Override
	public String toString() {
		return "SkillsAndCategoryDTO [skillsNo=" + skillsNo + ", skillsName=" + skillsName + ", categoryNo="
				+ categoryNo + ", skillsCategory=" + skillsCategory + "]";
	}
	
	
	
}
