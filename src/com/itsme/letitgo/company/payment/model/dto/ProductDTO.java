package com.itsme.letitgo.company.payment.model.dto;

public class ProductDTO implements java.io.Serializable {
	
	private int productNo ;
	private int productPrice;
	private String productName;
	private Integer readingNum;
	private String upperExposureTime;
	private String productKinds;
	private String productExposureStatus;
	
	public ProductDTO() {}

	public ProductDTO(int productNo, int productPrice, String productName, Integer readingNum, String upperExposureTime,
			String productKinds, String productExposureStatus) {
		super();
		this.productNo = productNo;
		this.productPrice = productPrice;
		this.productName = productName;
		this.readingNum = readingNum;
		this.upperExposureTime = upperExposureTime;
		this.productKinds = productKinds;
		this.productExposureStatus = productExposureStatus;
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Integer getReadingNum() {
		return readingNum;
	}

	public void setReadingNum(Integer readingNum) {
		this.readingNum = readingNum;
	}

	public String getUpperExposureTime() {
		return upperExposureTime;
	}

	public void setUpperExposureTime(String upperExposureTime) {
		this.upperExposureTime = upperExposureTime;
	}

	public String getProductKinds() {
		return productKinds;
	}

	public void setProductKinds(String productKinds) {
		this.productKinds = productKinds;
	}

	public String getProductExposureStatus() {
		return productExposureStatus;
	}

	public void setProductExposureStatus(String productExposureStatus) {
		this.productExposureStatus = productExposureStatus;
	}

	@Override
	public String toString() {
		return "ProductDTO [productNo=" + productNo + ", productPrice=" + productPrice + ", productName=" + productName
				+ ", readingNum=" + readingNum + ", upperExposureTime=" + upperExposureTime + ", productKinds="
				+ productKinds + ", productExposureStatus=" + productExposureStatus + "]";
	}

}
