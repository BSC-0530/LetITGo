package com.itsme.letitgo.company.scout.model.dto;

public class CountReadingNumDTO {
	
	private int coMemNo;
	private int readingLeftNum;
	private String productStatus;
	
	public CountReadingNumDTO() {};
	
	public CountReadingNumDTO(int coMemNo, int readingLeftNum, String productStatus) {
		super();
		this.coMemNo = coMemNo;
		this.readingLeftNum = readingLeftNum;
		this.productStatus = productStatus;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public int getReadingLeftNum() {
		return readingLeftNum;
	}

	public void setReadingLeftNum(int readingLeftNum) {
		this.readingLeftNum = readingLeftNum;
	}

	public String getProductStatus() {
		return productStatus;
	}

	public void setProductStatus(String productStatus) {
		this.productStatus = productStatus;
	}

	@Override
	public String toString() {
		return "CountReadingNumDTO [coMemNo=" + coMemNo + ", readingLeftNum=" + readingLeftNum + ", productStatus="
				+ productStatus + "]";
	}
	
	
}

