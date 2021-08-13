package com.itsme.letitgo.personal.resume.model.dto;

import java.sql.Date;

public class CareerHistoryDTO implements java.io.Serializable {

	private String carComName;
	private java.sql.Date carHireDate;
	private java.sql.Date carEntDate;
	private String carStatus;
	private String carDeptName;
	private String carJobName;
	private String projectName;
	private java.sql.Date projectStartDate;
	private java.sql.Date projectEndDate;
	private String projectContent;
	private String carWorkField;
	private int jobNo;
	private int resumeNo;
	private int carNo;
	
	private ResumeDTO resumeDTO;
	
	public CareerHistoryDTO() {}

	public CareerHistoryDTO(String carComName, Date carHireDate, Date carEntDate, String carStatus, String carDeptName,
			String carJobName, String projectName, Date projectStartDate, Date projectEndDate, String projectContent,
			String carWorkField, int jobNo, int resumeNo, int carNo, ResumeDTO resumeDTO) {
		super();
		this.carComName = carComName;
		this.carHireDate = carHireDate;
		this.carEntDate = carEntDate;
		this.carStatus = carStatus;
		this.carDeptName = carDeptName;
		this.carJobName = carJobName;
		this.projectName = projectName;
		this.projectStartDate = projectStartDate;
		this.projectEndDate = projectEndDate;
		this.projectContent = projectContent;
		this.carWorkField = carWorkField;
		this.jobNo = jobNo;
		this.resumeNo = resumeNo;
		this.carNo = carNo;
		this.resumeDTO = resumeDTO;
	}

	
	
	public String getCarComName() {
		return carComName;
	}

	public void setCarComName(String carComName) {
		this.carComName = carComName;
	}

	public java.sql.Date getCarHireDate() {
		return carHireDate;
	}

	public void setCarHireDate(java.sql.Date carHireDate) {
		this.carHireDate = carHireDate;
	}

	public java.sql.Date getCarEntDate() {
		return carEntDate;
	}

	public void setCarEntDate(java.sql.Date carEntDate) {
		this.carEntDate = carEntDate;
	}

	public String getCarStatus() {
		return carStatus;
	}

	public void setCarStatus(String carStatus) {
		this.carStatus = carStatus;
	}

	public String getCarDeptName() {
		return carDeptName;
	}

	public void setCarDeptName(String carDeptName) {
		this.carDeptName = carDeptName;
	}

	public String getCarJobName() {
		return carJobName;
	}

	public void setCarJobName(String carJobName) {
		this.carJobName = carJobName;
	}

	public String getProjectName() {
		return projectName;
	}

	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}

	public java.sql.Date getProjectStartDate() {
		return projectStartDate;
	}

	public void setProjectStartDate(java.sql.Date projectStartDate) {
		this.projectStartDate = projectStartDate;
	}

	public java.sql.Date getProjectEndDate() {
		return projectEndDate;
	}

	public void setProjectEndDate(java.sql.Date projectEndDate) {
		this.projectEndDate = projectEndDate;
	}

	public String getProjectContent() {
		return projectContent;
	}

	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}

	public String getCarWorkField() {
		return carWorkField;
	}

	public void setCarWorkField(String carWorkField) {
		this.carWorkField = carWorkField;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public ResumeDTO getResumeDTO() {
		return resumeDTO;
	}

	public void setResumeDTO(ResumeDTO resumeDTO) {
		this.resumeDTO = resumeDTO;
	}

	@Override
	public String toString() {
		return "CareerHistoryDTO [carComName=" + carComName + ", carHireDate=" + carHireDate + ", carEntDate="
				+ carEntDate + ", carStatus=" + carStatus + ", carDeptName=" + carDeptName + ", carJobName="
				+ carJobName + ", projectName=" + projectName + ", projectStartDate=" + projectStartDate
				+ ", projectEndDate=" + projectEndDate + ", projectContent=" + projectContent + ", carWorkField="
				+ carWorkField + ", jobNo=" + jobNo + ", resumeNo=" + resumeNo + ", carNo=" + carNo + ", resumeDTO="
				+ resumeDTO + "]";
	}

	
}
