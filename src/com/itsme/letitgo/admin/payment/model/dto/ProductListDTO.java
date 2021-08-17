package com.itsme.letitgo.admin.payment.model.dto;


public class ProductListDTO implements java.io.Serializable{

	private int productNo;
	private int productPrice;
	private int productReadingTicket;
	private String productKinds;
	private String productStatus;
	private String productName;
	private int productExposureTime;
	
	public ProductListDTO() {}

	
	public ProductListDTO(int productNo, int productPrice, int productReadingTicket, String productKinds,
			String productStatus, String productName, int productExposureTime) {
		super();
		this.productNo = productNo;
		this.productPrice = productPrice;
		this.productReadingTicket = productReadingTicket;
		this.productKinds = productKinds;
		this.productStatus = productStatus;
		this.productName = productName;
		this.productExposureTime = productExposureTime;
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

	public int getProductReadingTicket() {
		return productReadingTicket;
	}

	public void setProductReadingTicket(int productReadingTicket) {
		this.productReadingTicket = productReadingTicket;
	}

	public String getProductKinds() {
		return productKinds;
	}

	public void setProductKinds(String productKinds) {
		this.productKinds = productKinds;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductExposureTime() {
		return productExposureTime;
	}

	public void setProductExposureTime(int productExposureTime) {
		this.productExposureTime = productExposureTime;
	}

	@Override
	public String toString() {
		return "ProductListDTO [productNo=" + productNo + ", productPrice=" + productPrice + ", productReadingTicket="
				+ productReadingTicket + ", productKinds=" + productKinds + ", productStatus=" + productStatus
				+ ", productName=" + productName + ", productExposureTime=" + productExposureTime + "]";
	}
	
	
}
