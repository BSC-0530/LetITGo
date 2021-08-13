package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;

public class ReadingUsageHistoryDTO {


	private int resumeNo;
	private java.sql.Date productUseDate;
	private int payNo;
	private int coMemNo;
	
	
	public ReadingUsageHistoryDTO(int resumeNo, Date productUseDate, int payNo, int coMemNo) {
		super();
		this.resumeNo = resumeNo;
		this.productUseDate = productUseDate;
		this.payNo = payNo;
		this.coMemNo = coMemNo;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public java.sql.Date getProductUseDate() {
		return productUseDate;
	}
	public void setProductUseDate(java.sql.Date productUseDate) {
		this.productUseDate = productUseDate;
	}
	public int getPayNo() {
		return payNo;
	}
	public void setPayNo(int payNo) {
		this.payNo = payNo;
	}
	public int getCoMemNo() {
		return coMemNo;
	}
	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}
	@Override
	public String toString() {
		return "ReadingUsageHistoryDTO [resumeNo=" + resumeNo + ", productUseDate=" + productUseDate + ", payNo="
				+ payNo + ", coMemNo=" + coMemNo + "]";
	}


}
