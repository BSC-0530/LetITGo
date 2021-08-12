package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class RefundHistoryDTO {
	
	private int payChangeNo;
	private int payNo;
	private String productName;
	private int payPrice;
	private String payChangeReason;
	private String payChangeStatus;
	private java.sql.Date payReqDate;
	private java.sql.Date payAnsDate;
	
	public RefundHistoryDTO() {}

	public RefundHistoryDTO(int payChangeNo, int payNo, String productName, int payPrice, String payChangeReason,
			String payChangeStatus, Date payReqDate, Date payAnsDate) {
		super();
		this.payChangeNo = payChangeNo;
		this.payNo = payNo;
		this.productName = productName;
		this.payPrice = payPrice;
		this.payChangeReason = payChangeReason;
		this.payChangeStatus = payChangeStatus;
		this.payReqDate = payReqDate;
		this.payAnsDate = payAnsDate;
	}

	public int getPayChangeNo() {
		return payChangeNo;
	}

	public void setPayChangeNo(int payChangeNo) {
		this.payChangeNo = payChangeNo;
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

	public String getPayChangeReason() {
		return payChangeReason;
	}

	public void setPayChangeReason(String payChangeReason) {
		this.payChangeReason = payChangeReason;
	}

	public String getPayChangeStatus() {
		return payChangeStatus;
	}

	public void setPayChangeStatus(String payChangeStatus) {
		this.payChangeStatus = payChangeStatus;
	}

	public java.sql.Date getPayReqDate() {
		return payReqDate;
	}

	public void setPayReqDate(java.sql.Date payReqDate) {
		this.payReqDate = payReqDate;
	}

	public java.sql.Date getPayAnsDate() {
		return payAnsDate;
	}

	public void setPayAnsDate(java.sql.Date payAnsDate) {
		this.payAnsDate = payAnsDate;
	}

	@Override
	public String toString() {
		return "RefundHistoryDTO [payChangeNo=" + payChangeNo + ", payNo=" + payNo + ", productName=" + productName
				+ ", payPrice=" + payPrice + ", payChangeReason=" + payChangeReason + ", payChangeStatus="
				+ payChangeStatus + ", payReqDate=" + payReqDate + ", payAnsDate=" + payAnsDate + "]";
	}

	
	
	
}
