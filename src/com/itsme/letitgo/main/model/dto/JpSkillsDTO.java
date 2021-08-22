package com.itsme.letitgo.main.model.dto;

public class JpSkillsDTO implements java.io.Serializable {
	
	private int jobPostNo;
	private int skillsNo;
	private String skillsName;
	
	public JpSkillsDTO() {};
	


	public JpSkillsDTO(int jobPostNo, int skillsNo, String skillsName) {
		super();
		this.jobPostNo = jobPostNo;
		this.skillsNo = skillsNo;
		this.skillsName = skillsName;
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



	@Override
	public String toString() {
		return "JpSkillsDTO [jobPostNo=" + jobPostNo + ", skillsNo=" + skillsNo + ", skillsName=" + skillsName + "]";
	}

	
	
	

}
