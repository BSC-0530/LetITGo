package com.itsme.letitgo.personal.scout.model.dto;

public class ReadingResumeListOfPersonalDTO {
	
	private int coMemNo;
	private String address;
	private String coStatus;
	private String resumeBrowseKinds;
	private String scoutKinds;
	private String coComName;
	private int resumeNo;
	
	public ReadingResumeListOfPersonalDTO() {}

	public ReadingResumeListOfPersonalDTO(int coMemNo, String address, String coStatus, String resumeBrowseKinds,
			String scoutKinds, String coComName, int resumeNo) {
		super();
		this.coMemNo = coMemNo;
		this.address = address;
		this.coStatus = coStatus;
		this.resumeBrowseKinds = resumeBrowseKinds;
		this.scoutKinds = scoutKinds;
		this.coComName = coComName;
		this.resumeNo = resumeNo;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
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

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	@Override
	public String toString() {
		return "ReadingResumeListOfPersonalDTO [coMemNo=" + coMemNo + ", address=" + address + ", coStatus=" + coStatus
				+ ", resumeBrowseKinds=" + resumeBrowseKinds + ", scoutKinds=" + scoutKinds + ", coComName=" + coComName
				+ ", resumeNo=" + resumeNo + "]";
	}

	
	
}
