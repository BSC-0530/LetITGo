package com.itsme.letitgo.company.scout.model.dto;

public class InterviewProposalDTO {
	
	private int scoutNo;
	private int coMemNo;
	private int resumeNo;
	private int inMemNo;
	private String scoutKinds;
	
	public InterviewProposalDTO() {}

	public InterviewProposalDTO(int scoutNo, int coMemNo, int resumeNo, int inMemNo, String scoutKinds) {
		super();
		this.scoutNo = scoutNo;
		this.coMemNo = coMemNo;
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.scoutKinds = scoutKinds;
	}

	public int getScoutNo() {
		return scoutNo;
	}

	public void setScoutNo(int scoutNo) {
		this.scoutNo = scoutNo;
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

	public int getInMemNo() {
		return inMemNo;
	}

	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}

	public String getScoutKinds() {
		return scoutKinds;
	}

	public void setScoutKinds(String scoutKinds) {
		this.scoutKinds = scoutKinds;
	}

	@Override
	public String toString() {
		return "InterviewProposalDTO [scoutNo=" + scoutNo + ", coMemNo=" + coMemNo + ", resumeNo=" + resumeNo
				+ ", inMemNo=" + inMemNo + ", scoutKinds=" + scoutKinds + "]";
	}
	
	

}
