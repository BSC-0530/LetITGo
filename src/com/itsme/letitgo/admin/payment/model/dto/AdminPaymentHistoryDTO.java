package com.itsme.letitgo.admin.payment.model.dto;

public class AdminPaymentHistoryDTO {
	
	private int payNo;
	private String coComName;
	private java.sql.Date payDate;
	private String productName;
	private int payPrice;

	public AdminPaymentHistoryDTO() {}

	public AdminPaymentHistoryDTO(int payNo, String coComName, java.sql.Date payDate, String productName,
			int payPrice) {
		super();
		this.payNo = payNo;
		this.coComName = coComName;
		this.payDate = payDate;
		this.productName = productName;
		this.payPrice = payPrice;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	@Override
	public String toString() {
		return "AdminPaymentHistoryDTO [payNo=" + payNo + ", coComName=" + coComName + ", payDate=" + payDate
				+ ", productName=" + productName + ", payPrice=" + payPrice + "]";
	}

	

	
	
}
