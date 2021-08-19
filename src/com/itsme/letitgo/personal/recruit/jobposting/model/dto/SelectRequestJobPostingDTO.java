package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

import java.util.List;

import com.itsme.letitgo.common.paging.SelectCriteria;

public class SelectRequestJobPostingDTO {
	
	private int jobNo;
	private String skills;
	private int experience;
	private List<String> areaList;
	private SelectCriteria selectCriteria;
	
	public SelectRequestJobPostingDTO() {}

	public SelectRequestJobPostingDTO(int jobNo, String skills, int experience, List<String> areaList,
			SelectCriteria selectCriteria) {
		super();
		this.jobNo = jobNo;
		this.skills = skills;
		this.experience = experience;
		this.areaList = areaList;
		this.selectCriteria = selectCriteria;
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

	public SelectCriteria getSelectCriteria() {
		return selectCriteria;
	}

	public void setSelectCriteria(SelectCriteria selectCriteria) {
		this.selectCriteria = selectCriteria;
	}

	@Override
	public String toString() {
		return "SelectRequestJobPostingDTO [jobNo=" + jobNo + ", skills=" + skills + ", experience=" + experience
				+ ", areaList=" + areaList + ", selectCriteria=" + selectCriteria + "]";
	}
	
	





	
}
