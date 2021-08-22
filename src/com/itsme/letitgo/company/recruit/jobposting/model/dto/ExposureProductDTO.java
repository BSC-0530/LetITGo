package com.itsme.letitgo.company.recruit.jobposting.model.dto;

public class ExposureProductDTO implements java.io.Serializable {

	
	private Integer exposureTime;
	private int productNo;
	private String productName;
	
	public ExposureProductDTO() {}
	
	public ExposureProductDTO(Integer exposureTime, int productNo, String productName) {
		super();
		this.exposureTime = exposureTime;
		this.productNo = productNo;
		this.productName = productName;
	}
	public Integer getExposureTime() {
		return exposureTime;
	}
	public void setExposureTime(Integer exposureTime) {
		this.exposureTime = exposureTime;
	}
	public int getProductNo() {
		return productNo;
	}
	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	@Override
	public String toString() {
		return "ExposureProductDTO [exposureTime=" + exposureTime + ", productNo=" + productNo + ", productName="
				+ productName + "]";
	}
	
	
}
