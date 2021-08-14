package com.itsme.letitgo.admin.payment.model.dto;

import java.sql.Date;

public class AdminRefundHistoryDTO implements java.io.Serializable {

	private int payChangeNo;
	private int payNo;
	private java.sql.Date payDate;
	private java.sql.Date payReqDate;
	private java.sql.Date payAnsDate;
	private int payPrice;
	private String payChangeStatus;
	private String payChangeReason;
	private String payRejectReason;

	public AdminRefundHistoryDTO() {}

	public AdminRefundHistoryDTO(int payChangeNo, int payNo, Date payDate, Date payReqDate, Date payAnsDate,
			int payPrice, String payChangeStatus, String payChangeReason, String payRejectReason) {
		super();
		this.payChangeNo = payChangeNo;
		this.payNo = payNo;
		this.payDate = payDate;
		this.payReqDate = payReqDate;
		this.payAnsDate = payAnsDate;
		this.payPrice = payPrice;
		this.payChangeStatus = payChangeStatus;
		this.payChangeReason = payChangeReason;
		this.payRejectReason = payRejectReason;
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

	public java.sql.Date getPayDate() {
		return payDate;
	}

	public void setPayDate(java.sql.Date payDate) {
		this.payDate = payDate;
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

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public String getPayChangeStatus() {
		return payChangeStatus;
	}

	public void setPayChangeStatus(String payChangeStatus) {
		this.payChangeStatus = payChangeStatus;
	}

	public String getPayChangeReason() {
		return payChangeReason;
	}

	public void setPayChangeReason(String payChangeReason) {
		this.payChangeReason = payChangeReason;
	}

	public String getPayRejectReason() {
		return payRejectReason;
	}

	public void setPayRejectReason(String payRejectReason) {
		this.payRejectReason = payRejectReason;
	}

	@Override
	public String toString() {
		return "AdminRefundHistoryDTO [payChangeNo=" + payChangeNo + ", payNo=" + payNo + ", payDate=" + payDate
				+ ", payReqDate=" + payReqDate + ", payAnsDate=" + payAnsDate + ", payPrice=" + payPrice
				+ ", payChangeStatus=" + payChangeStatus + ", payChangeReason=" + payChangeReason + ", payRejectReason="
				+ payRejectReason + "]";
	}
	
	
}
