package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;

public class CompanyResumeHoldingSkillsDTO {
	
	
	private int carNo;
	private String carComName;
	private Date carHireDate;
	private Date carEntDate;
	private String carStatus;
	private String carDeptName;
	private String carJobName;
	private String carWorkField;
	private String projectName;
	private Date projectStartDate;
	private Date projectEndDate;
	private String projectContent;
	private int jonNo;
	private int resumeNo;
	
	public CompanyResumeHoldingSkillsDTO() {}
	
	public CompanyResumeHoldingSkillsDTO(int carNo, String carComName, Date carHireDate, Date carEntDate,
			String carStatus, String carDeptName, String carJobName, String carWorkField, String projectName,
			Date projectStartDate, Date projectEndDate, String projectContent, int jonNo, int resumeNo) {
		super();
		this.carNo = carNo;
		this.carComName = carComName;
		this.carHireDate = carHireDate;
		this.carEntDate = carEntDate;
		this.carStatus = carStatus;
		this.carDeptName = carDeptName;
		this.carJobName = carJobName;
		this.carWorkField = carWorkField;
		this.projectName = projectName;
		this.projectStartDate = projectStartDate;
		this.projectEndDate = projectEndDate;
		this.projectContent = projectContent;
		this.jonNo = jonNo;
		this.resumeNo = resumeNo;
	}
	public int getCarNo() {
		return carNo;
	}
	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}
	public String getCarComName() {
		return carComName;
	}
	public void setCarComName(String carComName) {
		this.carComName = carComName;
	}
	public Date getCarHireDate() {
		return carHireDate;
	}
	public void setCarHireDate(Date carHireDate) {
		this.carHireDate = carHireDate;
	}
	public Date getCarEntDate() {
		return carEntDate;
	}
	public void setCarEntDate(Date carEntDate) {
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
	public String getCarWorkField() {
		return carWorkField;
	}
	public void setCarWorkField(String carWorkField) {
		this.carWorkField = carWorkField;
	}
	public String getProjectName() {
		return projectName;
	}
	public void setProjectName(String projectName) {
		this.projectName = projectName;
	}
	public Date getProjectStartDate() {
		return projectStartDate;
	}
	public void setProjectStartDate(Date projectStartDate) {
		this.projectStartDate = projectStartDate;
	}
	public Date getProjectEndDate() {
		return projectEndDate;
	}
	public void setProjectEndDate(Date projectEndDate) {
		this.projectEndDate = projectEndDate;
	}
	public String getProjectContent() {
		return projectContent;
	}
	public void setProjectContent(String projectContent) {
		this.projectContent = projectContent;
	}
	public int getJonNo() {
		return jonNo;
	}
	public void setJonNo(int jonNo) {
		this.jonNo = jonNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	@Override
	public String toString() {
		return "companyResumeHoldingSkillsDTO [carNo=" + carNo + ", carComName=" + carComName + ", carHireDate="
				+ carHireDate + ", carEntDate=" + carEntDate + ", carStatus=" + carStatus + ", carDeptName="
				+ carDeptName + ", carJobName=" + carJobName + ", carWorkField=" + carWorkField + ", projectName="
				+ projectName + ", projectStartDate=" + projectStartDate + ", projectEndDate=" + projectEndDate
				+ ", projectContent=" + projectContent + ", jonNo=" + jonNo + ", resumeNo=" + resumeNo + "]";
	}
	
}
