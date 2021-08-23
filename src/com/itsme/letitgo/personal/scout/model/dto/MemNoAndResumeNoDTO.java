package com.itsme.letitgo.personal.scout.model.dto;

public class MemNoAndResumeNoDTO {
	
	private int memNo;
	private int resumeNo;
	
	public MemNoAndResumeNoDTO() {}

	public MemNoAndResumeNoDTO(int memNo, int resumeNo) {
		super();
		this.memNo = memNo;
		this.resumeNo = resumeNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	@Override
	public String toString() {
		return "MemNoAndResumeNoDTO [memNo=" + memNo + ", resumeNo=" + resumeNo + "]";
	}
	
	

}
