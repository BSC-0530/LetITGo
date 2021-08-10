package com.itsme.letitgo.personal.resume.model.dto;

import java.sql.Date;

public class LicenseHistoryDTO {
	
	private String licenseName;
	private String licenseAgency;
	private java.sql.Date licenseDate;
	private int resumeNo;
	private int licenseNo;
	
	public LicenseHistoryDTO() {}

	public LicenseHistoryDTO(String licenseName, String licenseAgency, Date licenseDate, int resumeNo, int licenseNo) {
		super();
		this.licenseName = licenseName;
		this.licenseAgency = licenseAgency;
		this.licenseDate = licenseDate;
		this.resumeNo = resumeNo;
		this.licenseNo = licenseNo;
	}

	public String getLicenseName() {
		return licenseName;
	}

	public void setLicenseName(String licenseName) {
		this.licenseName = licenseName;
	}

	public String getLicenseAgency() {
		return licenseAgency;
	}

	public void setLicenseAgency(String licenseAgency) {
		this.licenseAgency = licenseAgency;
	}

	public java.sql.Date getLicenseDate() {
		return licenseDate;
	}

	public void setLicenseDate(java.sql.Date licenseDate) {
		this.licenseDate = licenseDate;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getLicenseNo() {
		return licenseNo;
	}

	public void setLicenseNo(int licenseNo) {
		this.licenseNo = licenseNo;
	}

	@Override
	public String toString() {
		return "LicenseHistoryDTO [licenseName=" + licenseName + ", licenseAgency=" + licenseAgency + ", licenseDate="
				+ licenseDate + ", resumeNo=" + resumeNo + ", licenseNo=" + licenseNo + "]";
	}
	
	

}
