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
