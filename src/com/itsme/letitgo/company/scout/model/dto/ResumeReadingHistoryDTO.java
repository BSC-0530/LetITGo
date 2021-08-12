package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;

public class ResumeReadingHistoryDTO {

	private int resumeBrowseNo;
	private int CoMemNo;
	private java.sql.Date resumeBrowseDate;
	private String resumeBrowseKinds;
	
	public ResumeReadingHistoryDTO() {}

	
	public ResumeReadingHistoryDTO(int resumeBrowseNo, int coMemNo, Date resumeBrowseDate, String resumeBrowseKinds) {
		super();
		this.resumeBrowseNo = resumeBrowseNo;
		CoMemNo = coMemNo;
		this.resumeBrowseDate = resumeBrowseDate;
		this.resumeBrowseKinds = resumeBrowseKinds;
	}



	public int getResumeBrowseNo() {
		return resumeBrowseNo;
	}

	public void setResumeBrowseNo(int resumeBrowseNo) {
		this.resumeBrowseNo = resumeBrowseNo;
	}

	public int getCoMemNo() {
		return CoMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		CoMemNo = coMemNo;
	}

	public java.sql.Date getResumeBrowseDate() {
		return resumeBrowseDate;
	}

	public void setResumeBrowseDate(java.sql.Date resumeBrowseDate) {
		this.resumeBrowseDate = resumeBrowseDate;
	}

	public String getResumeBrowseKinds() {
		return resumeBrowseKinds;
	}

	public void setResumeBrowseKinds(String resumeBrowseKinds) {
		this.resumeBrowseKinds = resumeBrowseKinds;
	}


	@Override
	public String toString() {
		return "ResumeReadingHistoryDTO [resumeBrowseNo=" + resumeBrowseNo + ", CoMemNo=" + CoMemNo
				+ ", resumeBrowseDate=" + resumeBrowseDate + ", resumeBrowseKinds=" + resumeBrowseKinds + "]";
	}
	
}


