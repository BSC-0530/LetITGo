package com.itsme.letitgo.company.payment.model.dto;

import java.sql.Date;

public class PaymentHistoryDTO implements java.io.Serializable {
	
	private int payNo;					//결제번호
	private java.sql.Date payDate;		//결제일
	private int productNo;				//상품번호
	private int	payPrice;				//결제금액
	private int coMemNo;				//기업회원번호
	private String payKinds;			//결제상태
	private int payChangeNo; 			//결제상태변경이력번호 
	private String payChangeStatus;		//변경상태
	private java.sql.Date payReqDate;	//환불요청일자
	private String payChangeReason;		//변경사유
	private java.sql.Date payAnsDate;	//응답일자
	
	public PaymentHistoryDTO() {}

	public PaymentHistoryDTO(int payNo, Date payDate, int productNo, int payPrice, int coMemNo, String payKinds,
			int payChangeNo, String payChangeStatus, Date payReqDate, String payChangeReason, Date payAnsDate) {
		super();
		this.payNo = payNo;
		this.payDate = payDate;
		this.productNo = productNo;
		this.payPrice = payPrice;
		this.coMemNo = coMemNo;
		this.payKinds = payKinds;
		this.payChangeNo = payChangeNo;
		this.payChangeStatus = payChangeStatus;
		this.payReqDate = payReqDate;
		this.payChangeReason = payChangeReason;
		this.payAnsDate = payAnsDate;
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

	public int getProductNo() {
		return productNo;
	}

	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}

	public int getPayPrice() {
		return payPrice;
	}

	public void setPayPrice(int payPrice) {
		this.payPrice = payPrice;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getPayKinds() {
		return payKinds;
	}

	public void setPayKinds(String payKinds) {
		this.payKinds = payKinds;
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

	public java.sql.Date getPayAnsDate() {
		return payAnsDate;
	}

	public void setPayAnsDate(java.sql.Date payAnsDate) {
		this.payAnsDate = payAnsDate;
	}

	@Override
	public String toString() {
		return "PaymentHistoryDTO [payNo=" + payNo + ", payDate=" + payDate + ", productNo=" + productNo + ", payPrice="
				+ payPrice + ", coMemNo=" + coMemNo + ", payKinds=" + payKinds + ", payChangeNo=" + payChangeNo
				+ ", payChangeStatus=" + payChangeStatus + ", payReqDate=" + payReqDate + ", payChangeReason="
				+ payChangeReason + ", payAnsDate=" + payAnsDate + "]";
	}	
	
	
	
}
