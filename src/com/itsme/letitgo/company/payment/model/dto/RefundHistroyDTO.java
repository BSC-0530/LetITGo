package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class RefundHistroyDTO {
	
	private int payChangeNo;
	private String payChangeStatus;
	private java.sql.Date payReqDate;
	private String payChangeReason;
	private int payNo;
	private java.sql.Date payAnsDate;
	
	public RefundHistroyDTO() {}

	public RefundHistroyDTO(int payChangeNo, String payChangeStatus, Date payReqDate, String payChangeReason, int payNo,
			Date payAnsDate) {
		super();
		this.payChangeNo = payChangeNo;
		this.payChangeStatus = payChangeStatus;
		this.payReqDate = payReqDate;
		this.payChangeReason = payChangeReason;
		this.payNo = payNo;
		this.payAnsDate = payAnsDate;
	}

	public int getPayChangeNo() {
		return payChangeNo;
	}

	public void setPayChangeNo(int payChangeNo) {
		this.payChangeNo = payChangeNo;
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

	public String getPayChangeReason() {
		return payChangeReason;
	}

	public void setPayChangeReason(String payChangeReason) {
		this.payChangeReason = payChangeReason;
	}

	public int getPayNo() {
		return payNo;
	}

	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}

	public java.sql.Date getPayAnsDate() {
		return payAnsDate;
	}

	public void setPayAnsDate(java.sql.Date payAnsDate) {
		this.payAnsDate = payAnsDate;
	}

	@Override
	public String toString() {
		return "RefundHistroyDTO [payChangeNo=" + payChangeNo + ", payChangeStatus=" + payChangeStatus + ", payReqDate="
				+ payReqDate + ", payChangeReason=" + payChangeReason + ", payNo=" + payNo + ", payAnsDate="
				+ payAnsDate + ", getPayChangeNo()=" + getPayChangeNo() + ", getPayChangeStatus()="
				+ getPayChangeStatus() + ", getPayReqDate()=" + getPayReqDate() + ", getPayChangeReason()="
				+ getPayChangeReason() + ", getPayNo()=" + getPayNo() + ", getPayAnsDate()=" + getPayAnsDate()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	
	
}
