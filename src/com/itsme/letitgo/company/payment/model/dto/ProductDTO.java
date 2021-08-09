package com.itsme.letitgo.company.payment.model.dto;

public class ProductDTO implements java.io.Serializable {
	
	private int productNo ;
	private int productPrice;
	private Integer readingNum;
	private String upperExposureHour;
	private String productKinds;
	private String exposureStatus;
	
	public ProductDTO() {}

	public ProductDTO(int productNo, int productPrice, Integer readingNum, String upperExposureHour,
			String productKinds, String exposureStatus) {
		super();
		this.productNo = productNo;
		this.productPrice = productPrice;
		this.readingNum = readingNum;
		this.upperExposureHour = upperExposureHour;
		this.productKinds = productKinds;
		this.exposureStatus = exposureStatus;
	}

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public Integer getReadingNum() {
		return readingNum;
	}

	public void setReadingNum(Integer readingNum) {
		this.readingNum = readingNum;
	}

	public String getUpperExposureHour() {
		return upperExposureHour;
	}

	public void setUpperExposureHour(String upperExposureHour) {
		this.upperExposureHour = upperExposureHour;
	}

	public String getProductKinds() {
		return productKinds;
	}

	public void setProductKinds(String productKinds) {
		this.productKinds = productKinds;
	}

	public String getExposureStatus() {
		return exposureStatus;
	}

	public void setExposureStatus(String exposureStatus) {
		this.exposureStatus = exposureStatus;
	}

	@Override
	public String toString() {
		return "ProductDTO [productNo=" + productNo + ", productPrice=" + productPrice + ", readingNum=" + readingNum
				+ ", upperExposureHour=" + upperExposureHour + ", productKinds=" + productKinds + ", exposureStatus="
				+ exposureStatus + "]";
	}

	
	
}
