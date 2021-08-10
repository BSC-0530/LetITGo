package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;

public class readingResumeBrowseDTO implements java.io.Serializable{
	
	private int resumeBrowseNo;
	private int coMemNo;
	private int resumeNo;
	private Date resumeBrowseDate;
	private String resumeBrowseKinds;
	
	public readingResumeBrowseDTO() {}
	
	public readingResumeBrowseDTO(int resumeBrowseNo, int coMemNo, int resumeNo, Date resumeBrowseDate,
			String resumeBrowseKinds) {
		super();
		this.resumeBrowseNo = resumeBrowseNo;
		this.coMemNo = coMemNo;
		this.resumeNo = resumeNo;
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
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public Date getResumeBrowseDate() {
		return resumeBrowseDate;
	}

	public void setResumeBrowseDate(Date resumeBrowseDate) {
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
		return "readingResumeBrowseDTO [resumeBrowseNo=" + resumeBrowseNo + ", coMemNo=" + coMemNo + ", resumeNo="
				+ resumeNo + ", resumeBrowseDate=" + resumeBrowseDate + ", resumeBrowseKinds=" + resumeBrowseKinds
				+ "]";
	}
	
}
