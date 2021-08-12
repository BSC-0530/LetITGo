package com.itsme.letitgo.company.scout.model.dto;

public class CandidateDibsDTO implements java.io.Serializable {
	
	private int resumeNo;
	private int coMemNo;
	
	public CandidateDibsDTO() {}

	public CandidateDibsDTO(int resumeNo, int coMemNo) {
		super();
		this.resumeNo = resumeNo;
		this.coMemNo = coMemNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	@Override
	public String toString() {
		return "CandidateDibsDTO [resumeNo=" + resumeNo + ", coMemNo=" + coMemNo + "]";
	}
	
}
