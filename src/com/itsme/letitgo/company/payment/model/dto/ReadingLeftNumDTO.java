package com.itsme.letitgo.company.payment.model.dto;

public class ReadingLeftNumDTO {

	private Integer readingLeftNum;
	
	public ReadingLeftNumDTO() {}

	public ReadingLeftNumDTO(Integer readingLeftNum) {
		super();
		this.readingLeftNum = readingLeftNum;
	}

	public Integer getReadingLeftNum() {
		return readingLeftNum;
	}

	public void setReadingLeftNum(Integer readingLeftNum) {
		this.readingLeftNum = readingLeftNum;
	}

	@Override
	public String toString() {
		return "ReadingLeftNumDTO [readingLeftNum=" + readingLeftNum + "]";
	}

	
	
	
	
}
