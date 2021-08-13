package com.itsme.letitgo.admin.payment.model.dto;

import java.util.Date;

public class AdminPaymentHistoryDTO {
	
	private int payNo;
	private String coComName;
	private java.util.Date payDate;
	private String productName;
	private int payPrice;

	public AdminPaymentHistoryDTO() {}

	public AdminPaymentHistoryDTO(int payNo, String coComName, Date payDate, String productName, int payPrice) {
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

	public java.util.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.util.Date payDate) {
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
