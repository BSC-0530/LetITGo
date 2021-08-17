package com.itsme.letitgo.company.recruit.jobposting.model.dto;

public class JpSkillsDTO implements java.io.Serializable {
	
	private int jobPostNo;
	private int skillsNo;
	private String skillsName;
	private int categoryNo;
	
	public JpSkillsDTO() {}

	public JpSkillsDTO(int jobPostNo, int skillsNo, String skillsName, int categoryNo) {
		super();
		this.jobPostNo = jobPostNo;
		this.skillsNo = skillsNo;
		this.skillsName = skillsName;
		this.categoryNo = categoryNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
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
		return "JpSkillsDTO [jobPostNo=" + jobPostNo + ", skillsNo=" + skillsNo + ", skillsName=" + skillsName
				+ ", categoryNo=" + categoryNo + "]";
	};

	
	
	
	

}
