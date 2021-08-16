package com.itsme.letitgo.personal.info.model.dto;

public class RestrictedCompanyDTO {

	private int inMemNo;
	private int coComName;
	private int coMemNo;
	
	public RestrictedCompanyDTO() {}
	
	public RestrictedCompanyDTO(int inMemNo, int coComName, int coMemNo) {
		super();
		this.inMemNo = inMemNo;
		this.coComName = coComName;
		this.coMemNo = coMemNo;
	}
	public int getInMemNo() {
		return inMemNo;
	}
	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}
	public int getCoComName() {
		return coComName;
	}
	public void setCoComName(int coComName) {
		this.coComName = coComName;
	}
	public int getCoMemNo() {
		return coMemNo;
	}
	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}
	@Override
	public String toString() {
		return "RestrictedCompanyDTO [inMemNo=" + inMemNo + ", coComName=" + coComName + ", coMemNo=" + coMemNo + "]";
	}
	
	
}
