package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class BookmarkDTO {
	
	private int inMemNo;
	private int jobPostNo;
	private String coComName;
	
	public BookmarkDTO() {}

	public BookmarkDTO(int inMemNo, int jobPostNo, String coComName) {
		super();
		this.inMemNo = inMemNo;
		this.jobPostNo = jobPostNo;
		this.coComName = coComName;
	}

	public int getInMemNo() {
		return inMemNo;
	}

	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	@Override
	public String toString() {
		return "BookmarkDTO [inMemNo=" + inMemNo + ", jobPostNo=" + jobPostNo + ", coComName=" + coComName + "]";
	}

	
}
