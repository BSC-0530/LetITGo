package com.itsme.letitgo.admin.info.model.dto;

import java.sql.Date;

public class InsertRequestDTO {

	private int coReqNo;
	private int coMemNo;
	private String coAnsKinds;
	private Date coReqDate;
	private Date coAnsDate;
	private String coReqKinds;
	private String coRejectReason;
	
	public InsertRequestDTO () {}
	
	public InsertRequestDTO(int coReqNo, int coMemNo, String coAnsKinds, Date coReqDate, Date coAnsDate,
			String coReqKinds, String coRejectReason) {
		super();
		this.coReqNo = coReqNo;
		this.coMemNo = coMemNo;
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

	public String getCoAnsKinds() {
		return coAnsKinds;
	}

	public void setCoAnsKinds(String coAnsKinds) {
		this.coAnsKinds = coAnsKinds;
	}

	public Date getCoReqDate() {
		return coReqDate;
	}

	public void setCoReqDate(Date coReqDate) {
		this.coReqDate = coReqDate;
	}

	public Date getCoAnsDate() {
		return coAnsDate;
	}

	public void setCoAnsDate(Date coAnsDate) {
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
		return "InsertRequestDTO [coReqNo=" + coReqNo + ", coMemNo=" + coMemNo + ", coAnsKinds=" + coAnsKinds
				+ ", coReqDate=" + coReqDate + ", coAnsDate=" + coAnsDate + ", coReqKinds=" + coReqKinds
				+ ", coRejectReason=" + coRejectReason + "]";
	}
	
	
	
}
