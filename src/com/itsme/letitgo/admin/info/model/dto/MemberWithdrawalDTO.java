package com.itsme.letitgo.admin.info.model.dto;

import java.sql.Date;

public class MemberWithdrawalDTO implements java.io.Serializable {

	//개인
	private int memNo;
	private String memId;
	private String memEmail;
	private String memPwd;
	private String memName;
	private String memPhone;
	private String memKinds;
	private java.sql.Date memEnrollDate;
	private String memEntYn;						//탈퇴여부
	private java.sql.Date memEntDate;				//탈퇴일자	
	private int memEntNo;							//탈퇴사유번호	
	//기업
	private String coIntro;
	private String coNo;
	private String coComName;
	private String coCeoName;
	private String coAddress;
	private String coPhone;
	private String coPax;
	private String coSectors;
	private String coStatus;
	private String coWebsite;
	
	public MemberWithdrawalDTO() {}

	public MemberWithdrawalDTO(int memNo, String memId, String memEmail, String memPwd, String memName, String memPhone,
			String memKinds, Date memEnrollDate, String memEntYn, Date memEntDate, int memEntNo, String coIntro,
			String coNo, String coComName, String coCeoName, String coAddress, String coPhone, String coPax,
			String coSectors, String coStatus, String coWebsite) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memEmail = memEmail;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memKinds = memKinds;
		this.memEnrollDate = memEnrollDate;
		this.memEntYn = memEntYn;
		this.memEntDate = memEntDate;
		this.memEntNo = memEntNo;
		this.coIntro = coIntro;
		this.coNo = coNo;
		this.coComName = coComName;
		this.coCeoName = coCeoName;
		this.coAddress = coAddress;
		this.coPhone = coPhone;
		this.coPax = coPax;
		this.coSectors = coSectors;
		this.coStatus = coStatus;
		this.coWebsite = coWebsite;
	}

	public int getMemNo() {
		return memNo;
	}

	public String getMemId() {
		return memId;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public String getMemKinds() {
		return memKinds;
	}

	public java.sql.Date getMemEnrollDate() {
		return memEnrollDate;
	}

	public String getMemEntYn() {
		return memEntYn;
	}

	public java.sql.Date getMemEntDate() {
		return memEntDate;
	}

	public int getMemEntNo() {
		return memEntNo;
	}

	public String getCoIntro() {
		return coIntro;
	}

	public String getCoNo() {
		return coNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public String getCoCeoName() {
		return coCeoName;
	}

	public String getCoAddress() {
		return coAddress;
	}

	public String getCoPhone() {
		return coPhone;
	}

	public String getCoPax() {
		return coPax;
	}

	public String getCoSectors() {
		return coSectors;
	}

	public String getCoStatus() {
		return coStatus;
	}

	public String getCoWebsite() {
		return coWebsite;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public void setMemKinds(String memKinds) {
		this.memKinds = memKinds;
	}

	public void setMemEnrollDate(java.sql.Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	public void setMemEntYn(String memEntYn) {
		this.memEntYn = memEntYn;
	}

	public void setMemEntDate(java.sql.Date memEntDate) {
		this.memEntDate = memEntDate;
	}

	public void setMemEntNo(int memEntNo) {
		this.memEntNo = memEntNo;
	}

	public void setCoIntro(String coIntro) {
		this.coIntro = coIntro;
	}

	public void setCoNo(String coNo) {
		this.coNo = coNo;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public void setCoCeoName(String coCeoName) {
		this.coCeoName = coCeoName;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}

	public void setCoPhone(String coPhone) {
		this.coPhone = coPhone;
	}

	public void setCoPax(String coPax) {
		this.coPax = coPax;
	}

	public void setCoSectors(String coSectors) {
		this.coSectors = coSectors;
	}

	public void setCoStatus(String coStatus) {
		this.coStatus = coStatus;
	}

	public void setCoWebsite(String coWebsite) {
		this.coWebsite = coWebsite;
	}

	@Override
	public String toString() {
		return "MemberWithdrawalDTO [memNo=" + memNo + ", memId=" + memId + ", memEmail=" + memEmail + ", memPwd="
				+ memPwd + ", memName=" + memName + ", memPhone=" + memPhone + ", memKinds=" + memKinds
				+ ", memEnrollDate=" + memEnrollDate + ", memEntYn=" + memEntYn + ", memEntDate=" + memEntDate
				+ ", memEntNo=" + memEntNo + ", coIntro=" + coIntro + ", coNo=" + coNo + ", coComName=" + coComName
				+ ", coCeoName=" + coCeoName + ", coAddress=" + coAddress + ", coPhone=" + coPhone + ", coPax=" + coPax
				+ ", coSectors=" + coSectors + ", coStatus=" + coStatus + ", coWebsite=" + coWebsite + "]";
	}
	
	
	
}
