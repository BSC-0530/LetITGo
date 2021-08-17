package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.util.List;

public class SelectRequestJobPostingDTO {
	
	private int jobNo;
	private String skills;
	private int experience;
	private List<String> areaList;

	
	public SelectRequestJobPostingDTO() {}


	public SelectRequestJobPostingDTO(int jobNo, String skills, int experience, List<String> areaList) {
		super();
		this.jobNo = jobNo;
		this.skills = skills;
		this.experience = experience;
		this.areaList = areaList;
	}


	public int getJobNo() {
		return jobNo;
	}


	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}


	public String getSkills() {
		return skills;
	}


	public void setSkills(String skills) {
		this.skills = skills;
	}


	public int getExperience() {
		return experience;
	}


	public void setExperience(int experience) {
		this.experience = experience;
	}


	public List<String> getAreaList() {
		return areaList;
	}


	public void setAreaList(List<String> areaList) {
		this.areaList = areaList;
	}


	@Override
	public String toString() {
		return "SelectRequestJobPostingDTO [jobNo=" + jobNo + ", skills=" + skills + ", experience=" + experience
				+ ", areaList=" + areaList + "]";
	}


	


	
}
