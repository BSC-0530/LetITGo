package com.itsme.letitgo.company.recruit.applicant.model.dto;

public class HoldingAndSkillsDTO {
	
	private int resumeNo;
	private int skillsNo;
	private SkillsAndCategoryDTO skillsAndCategory;
	
	public HoldingAndSkillsDTO() {}

	public HoldingAndSkillsDTO(int resumeNo, int skillsNo, SkillsAndCategoryDTO skillsAndCategory) {
		super();
		this.resumeNo = resumeNo;
		this.skillsNo = skillsNo;
		this.skillsAndCategory = skillsAndCategory;
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

	public SkillsAndCategoryDTO getSkillsAndCategory() {
		return skillsAndCategory;
	}

	public void setSkillsAndCategory(SkillsAndCategoryDTO skillsAndCategory) {
		this.skillsAndCategory = skillsAndCategory;
	}

	@Override
	public String toString() {
		return "HoldingAndSkillsDTO [resumeNo=" + resumeNo + ", skillsNo=" + skillsNo + ", skillsAndCategory="
				+ skillsAndCategory + "]";
	}
	
	

}
