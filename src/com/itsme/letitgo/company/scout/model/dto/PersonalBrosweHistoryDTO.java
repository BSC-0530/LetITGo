package com.itsme.letitgo.company.scout.model.dto;

public class PersonalBrosweHistoryDTO {

	private String coComName;
	private String address;
	private String coStatus;
	private String resumeBrowseKinds;
	
	public PersonalBrosweHistoryDTO() {}

	public PersonalBrosweHistoryDTO(String coComName, String address, String coStatus, String resumeBrowseKinds) {
		super();
		this.coComName = coComName;
		this.address = address;
		this.coStatus = coStatus;
		this.resumeBrowseKinds = resumeBrowseKinds;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCoStatus() {
		return coStatus;
	}

	public void setCoStatus(String coStatus) {
		this.coStatus = coStatus;
	}

	public String getResumeBrowseKinds() {
		return resumeBrowseKinds;
	}

	public void setResumeBrowseKinds(String resumeBrowseKinds) {
		this.resumeBrowseKinds = resumeBrowseKinds;
	}

	@Override
	public String toString() {
		return "PersonalBrosweHistoryDTO [coComName=" + coComName + ", address=" + address + ", coStatus=" + coStatus
				+ ", resumeBrowseKinds=" + resumeBrowseKinds + "]";
	};
	
}
