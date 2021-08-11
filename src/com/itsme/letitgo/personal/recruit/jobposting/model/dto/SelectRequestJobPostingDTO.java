package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class SelectRequestJobPostingDTO {
	
	private int jobNo;
	private int career;
	private int skillsNo;
	private String area;
	
	private int arrayNo;

	
	public SelectRequestJobPostingDTO() {};
	
	public SelectRequestJobPostingDTO(int jobNo, int career, int skillsNo, String area, int arrayNo) {
		super();
		this.jobNo = jobNo;
		this.career = career;
		this.skillsNo = skillsNo;
		this.area = area;
		this.arrayNo = arrayNo;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public int getCareer() {
		return career;
	}

	public void setCareer(int career) {
		this.career = career;
	}

	public int getSkillsNo() {
		return skillsNo;
	}

	public void setSkillsNo(int skillsNo) {
		this.skillsNo = skillsNo;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public int getArrayNo() {
		return arrayNo;
	}

	public void setArrayNo(int arrayNo) {
		this.arrayNo = arrayNo;
	}

	@Override
	public String toString() {
		return "SelectRequestJobPostingDTO [jobNo=" + jobNo + ", career=" + career + ", skillsNo=" + skillsNo
				+ ", area=" + area + ", arrayNo=" + arrayNo + "]";
	}
	
	
	
	

}
