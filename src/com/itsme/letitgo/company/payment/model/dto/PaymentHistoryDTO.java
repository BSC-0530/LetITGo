package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class PaymentHistoryDTO implements java.io.Serializable {
	
	private int payNo;					
	private String productName;			
	private int	payPrice;				
	private java.sql.Date payDate;		
	private String payKinds;			
	
	public PaymentHistoryDTO() {}

	public PaymentHistoryDTO(int payNo, String productName, int payPrice, Date payDate, String payKinds) {
		super();
		this.payNo = payNo;
		this.productName = productName;
		this.payPrice = payPrice;
		this.payDate = payDate;
		this.payKinds = payKinds;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
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

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
	}

	public String getPayKinds() {
		return payKinds;
	}

	public void setPayKinds(String payKinds) {
		this.payKinds = payKinds;
	}

	@Override
	public String toString() {
		return "PaymentHistoryDTO [payNo=" + payNo + ", productName=" + productName + ", payPrice=" + payPrice
				+ ", payDate=" + payDate + ", payKinds=" + payKinds + "]";
	}

}
