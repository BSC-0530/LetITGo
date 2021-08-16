package com.itsme.letitgo.company.scout.model.dto;

public class CandidateRegistrationDTO implements java.io.Serializable {
	
	private int resumeNo;
	private int coMemNo;
	private String memName;
	
	public CandidateRegistrationDTO() {}

	public CandidateRegistrationDTO(int resumeNo, int coMemNo, String memName) {
		super();
		this.resumeNo = resumeNo;
		this.coMemNo = coMemNo;
		this.memName = memName;
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

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	@Override
	public String toString() {
		return "CandidateRegistrationDTO [resumeNo=" + resumeNo + ", coMemNo=" + coMemNo + ", memName=" + memName + "]";
	}
	
	

}
