package com.itsme.letitgo.company.info.model.dto;

public class CompanyAddInfoDTO implements java.io.Serializable {

	private int coMemNo;
	private String coIntro;
	private String coNo;
	private String coComName;
	private String coCeoName;
	private String coAddress;
	private String coPhone;
	private String coPax;
	private String coSectors;
	private String coStatus;
	public CompanyAddInfoDTO() {}
	
	public CompanyAddInfoDTO(int coMemNo, String coIntro, String coNo, String coComName, String coCeoName,
			String coAddress, String coPhone, String coPax, String coSectors, String coStatus) {
		super();
		this.coMemNo = coMemNo;
		this.coIntro = coIntro;
		this.coNo = coNo;
		this.coComName = coComName;
		this.coCeoName = coCeoName;
		this.coAddress = coAddress;
		this.coPhone = coPhone;
		this.coPax = coPax;
		this.coSectors = coSectors;
		this.coStatus = coStatus;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getCoIntro() {
		return coIntro;
	}

	public void setCoIntro(String coIntro) {
		this.coIntro = coIntro;
	}

	public String getCoNo() {
		return coNo;
	}

	public void setCoNo(String coNo) {
		this.coNo = coNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public String getCoCeoName() {
		return coCeoName;
	}

	public void setCoCeoName(String coCeoName) {
		this.coCeoName = coCeoName;
	}

	public String getCoAddress() {
		return coAddress;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}

	public String getCoPhone() {
		return coPhone;
	}

	public void setCoPhone(String coPhone) {
		this.coPhone = coPhone;
	}

	public String getCoPax() {
		return coPax;
	}

	public void setCoPax(String coPax) {
		this.coPax = coPax;
	}

	public String getCoSectors() {
		return coSectors;
	}

	public void setCoSectors(String coSectors) {
		this.coSectors = coSectors;
	}

	public String getCoStatus() {
		return coStatus;
	}

	public void setCoStatus(String coStatus) {
		this.coStatus = coStatus;
	}

	@Override
	public String toString() {
		return "CompanyAddInfoDTO [coMemNo=" + coMemNo + ", coIntro=" + coIntro + ", coNo=" + coNo + ", coComName="
				+ coComName + ", coCeoName=" + coCeoName + ", coAddress=" + coAddress + ", coPhone=" + coPhone
				+ ", coPax=" + coPax + ", coSectors=" + coSectors + ", coStatus=" + coStatus + "]";
	}
	
	

	
}
