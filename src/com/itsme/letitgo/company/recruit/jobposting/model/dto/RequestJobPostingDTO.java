package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class RequestJobPostingDTO {

	private int coMemNo;
	private int jobPostNo; // 등록한 공고 번호를 조회해 다른 테이블에 동시에  insert해주기 위해 dto에 담아오기 위해 필드에 변수 선언
	private String jobPostTitle;
	private int jobNo;
	private int jobPostMinExperience;
	private int jobPostMaxExperience;
	private String jobPostContents;
	private java.sql.Date jobPostDeadLine;
	private List<Integer> skillsCodeList;
	// 파일은 추가할 예정
//	private String potFilePath;
	
	public RequestJobPostingDTO() {}

	public RequestJobPostingDTO(int coMemNo, int jobPostNo, String jobPostTitle, int jobNo, int jobPostMinExperience,
			int jobPostMaxExperience, String jobPostContents, Date jobPostDeadLine, List<Integer> skillsCodeList) {
		super();
		this.coMemNo = coMemNo;
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.jobNo = jobNo;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostContents = jobPostContents;
		this.jobPostDeadLine = jobPostDeadLine;
		this.skillsCodeList = skillsCodeList;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public int getJobPostMinExperience() {
		return jobPostMinExperience;
	}

	public void setJobPostMinExperience(int jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}

	public int getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}

	public void setJobPostMaxExperience(int jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public java.sql.Date getJobPostDeadLine() {
		return jobPostDeadLine;
	}

	public void setJobPostDeadLine(java.sql.Date jobPostDeadLine) {
		this.jobPostDeadLine = jobPostDeadLine;
	}

	public List<Integer> getSkillsCodeList() {
		return skillsCodeList;
	}

	public void setSkillsCodeList(List<Integer> skillsCodeList) {
		this.skillsCodeList = skillsCodeList;
	}

	@Override
	public String toString() {
		return "RequestJobPostingDTO [coMemNo=" + coMemNo + ", jobPostNo=" + jobPostNo + ", jobPostTitle="
				+ jobPostTitle + ", jobNo=" + jobNo + ", jobPostMinExperience=" + jobPostMinExperience
				+ ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostContents=" + jobPostContents
				+ ", jobPostDeadLine=" + jobPostDeadLine + ", skillsCodeList=" + skillsCodeList + "]";
	}

	


	
}
