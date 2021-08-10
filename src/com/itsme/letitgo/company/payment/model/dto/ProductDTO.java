package com.itsme.letitgo.company.payment.model.dto;

public class ProductDTO implements java.io.Serializable {
	
	private int productNo ;
	private int productPrice;
	private String productName;
	private Integer readingNum;
	private String upperExposureHour;
	private String productKinds;
	private String productExposureStatus;
	
	public ProductDTO() {}

	public ProductDTO(int productNo, int productPrice, String productName, Integer readingNum, String upperExposureHour,
			String productKinds, String productExposureStatus) {
		super();
		this.productNo = productNo;
		this.productPrice = productPrice;
		this.productName = productName;
		this.readingNum = readingNum;
		this.upperExposureHour = upperExposureHour;
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

	public String getProductExposureStatus() {
		return productExposureStatus;
	}

	public void setProductExposureStatus(String productExposureStatus) {
		this.productExposureStatus = productExposureStatus;
	}

	@Override
	public String toString() {
		return "ProductDTO [productNo=" + productNo + ", productPrice=" + productPrice + ", productName=" + productName
				+ ", readingNum=" + readingNum + ", upperExposureHour=" + upperExposureHour + ", productKinds="
				+ productKinds + ", productExposureStatus=" + productExposureStatus + "]";
	}

	
	

	
	
}
