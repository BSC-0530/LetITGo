package com.itsme.letitgo.company.recruit.jobposting.model.dto;

import java.sql.Date;

public class UseExposureProductDTO implements java.io.Serializable {
	
	
	private int coMemNo;
	private int retainedProductCode;
	private int jobPostNo;
	private java.sql.Date exposureUseDate;
	private java.sql.Date exposureEndDate;
	private int usingTime;
	private int resultTime;
	
	public UseExposureProductDTO() {}

	public UseExposureProductDTO(int coMemNo, int retainedProductCode, int jobPostNo, Date exposureUseDate,
			Date exposureEndDate, int usingTime, int resultTime) {
		super();
		this.coMemNo = coMemNo;
		this.retainedProductCode = retainedProductCode;
		this.jobPostNo = jobPostNo;
		this.exposureUseDate = exposureUseDate;
		this.exposureEndDate = exposureEndDate;
		this.usingTime = usingTime;
		this.resultTime = resultTime;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public int getRetainedProductCode() {
		return retainedProductCode;
	}

	public void setRetainedProductCode(int retainedProductCode) {
		this.retainedProductCode = retainedProductCode;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public java.sql.Date getExposureUseDate() {
		return exposureUseDate;
	}

	public void setExposureUseDate(java.sql.Date exposureUseDate) {
		this.exposureUseDate = exposureUseDate;
	}

	public java.sql.Date getExposureEndDate() {
		return exposureEndDate;
	}

	public void setExposureEndDate(java.sql.Date exposureEndDate) {
		this.exposureEndDate = exposureEndDate;
	}

	public int getUsingTime() {
		return usingTime;
	}

	public void setUsingTime(int usingTime) {
		this.usingTime = usingTime;
	}

	public int getResultTime() {
		return resultTime;
	}

	public void setResultTime(int resultTime) {
		this.resultTime = resultTime;
	}

	@Override
	public String toString() {
		return "UseExposureProductDTO [coMemNo=" + coMemNo + ", retainedProductCode=" + retainedProductCode
				+ ", jobPostNo=" + jobPostNo + ", exposureUseDate=" + exposureUseDate + ", exposureEndDate="
				+ exposureEndDate + ", usingTime=" + usingTime + ", resultTime=" + resultTime + "]";
	}

	


}
