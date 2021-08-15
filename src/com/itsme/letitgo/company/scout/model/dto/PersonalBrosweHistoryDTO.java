package com.itsme.letitgo.company.scout.model.dto;

public class PersonalBrosweHistoryDTO implements java.io.Serializable {

	private String coComName;
	private String address;
	private String coStatus;
	private String resumeBrowseKinds;
	private String scoutKinds;
	private int coMemNo;
	
	public PersonalBrosweHistoryDTO() {}

	public PersonalBrosweHistoryDTO(String coComName, String address, String coStatus, String resumeBrowseKinds,
			String scoutKinds, int coMemNo) {
		super();
		this.coComName = coComName;
		this.address = address;
		this.coStatus = coStatus;
		this.resumeBrowseKinds = resumeBrowseKinds;
		this.scoutKinds = scoutKinds;
		this.coMemNo = coMemNo;
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

	public String getScoutKinds() {
		return scoutKinds;
	}

	public void setScoutKinds(String scoutKinds) {
		this.scoutKinds = scoutKinds;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	@Override
	public String toString() {
		return "PersonalBrosweHistoryDTO [coComName=" + coComName + ", address=" + address + ", coStatus=" + coStatus
				+ ", resumeBrowseKinds=" + resumeBrowseKinds + ", scoutKinds=" + scoutKinds + ", coMemNo=" + coMemNo
				+ "]";
	}

	

	
}
