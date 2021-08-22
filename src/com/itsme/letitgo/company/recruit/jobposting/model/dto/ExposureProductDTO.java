package com.itsme.letitgo.company.recruit.jobposting.model.dto;

public class ExposureProductDTO implements java.io.Serializable {

	
	private Integer exposureTime;
	private int retainedProductCode;
	private String productName;
	
	public ExposureProductDTO() {}

	public ExposureProductDTO(Integer exposureTime, int retainedProductCode, String productName) {
		super();
		this.exposureTime = exposureTime;
		this.retainedProductCode = retainedProductCode;
		this.productName = productName;
	}

	public Integer getExposureTime() {
		return exposureTime;
	}

	public void setExposureTime(Integer exposureTime) {
		this.exposureTime = exposureTime;
	}

	public int getRetainedProductCode() {
		return retainedProductCode;
	}

	public void setRetainedProductCode(int retainedProductCode) {
		this.retainedProductCode = retainedProductCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Override
	public String toString() {
		return "ExposureProductDTO [exposureTime=" + exposureTime + ", retainedProductCode=" + retainedProductCode
				+ ", productName=" + productName + "]";
	}
	
	
	
	
}
