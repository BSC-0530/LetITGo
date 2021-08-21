package com.itsme.letitgo.admin.info.model.dto;

import java.sql.Date;

public class InsertRequestDTO {

	private int coReqNo;		//pk
	private int coMemNo;		//사업 번호
	private String coComName;
	private String coAnsKinds;
	private java.sql.Date coReqDate;
	private java.sql.Date coAnsDate;
	private String coReqKinds;
	private String coRejectReason;
	
	public InsertRequestDTO () {}

	public InsertRequestDTO(int coReqNo, int coMemNo, String coComName, String coAnsKinds, Date coReqDate,
			Date coAnsDate, String coReqKinds, String coRejectReason) {
		this.coReqNo = coReqNo;
		this.coMemNo = coMemNo;
		this.coComName = coComName;
		this.coAnsKinds = coAnsKinds;
		this.coReqDate = coReqDate;
		this.coAnsDate = coAnsDate;
		this.coReqKinds = coReqKinds;
		this.coRejectReason = coRejectReason;
	}

	public int getCoReqNo() {
		return coReqNo;
	}

	public void setCoReqNo(int coReqNo) {
		this.coReqNo = coReqNo;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public String getCoAnsKinds() {
		return coAnsKinds;
	}

	public void setCoAnsKinds(String coAnsKinds) {
		this.coAnsKinds = coAnsKinds;
	}

	public java.sql.Date getCoReqDate() {
		return coReqDate;
	}

	public void setCoReqDate(java.sql.Date coReqDate) {
		this.coReqDate = coReqDate;
	}

	public java.sql.Date getCoAnsDate() {
		return coAnsDate;
	}

	public void setCoAnsDate(java.sql.Date coAnsDate) {
		this.coAnsDate = coAnsDate;
	}

	public String getCoReqKinds() {
		return coReqKinds;
	}

	public void setCoReqKinds(String coReqKinds) {
		this.coReqKinds = coReqKinds;
	}

	public String getCoRejectReason() {
		return coRejectReason;
	}

	public void setCoRejectReason(String coRejectReason) {
		this.coRejectReason = coRejectReason;
	}

	@Override
	public String toString() {
		return "InsertRequestDTO [coReqNo=" + coReqNo + ", coMemNo=" + coMemNo + ", coComName=" + coComName
				+ ", coAnsKinds=" + coAnsKinds + ", coReqDate=" + coReqDate + ", coAnsDate=" + coAnsDate
				+ ", coReqKinds=" + coReqKinds + ", coRejectReason=" + coRejectReason + "]";
	}

	
	
}
