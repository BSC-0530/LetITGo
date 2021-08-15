package com.itsme.letitgo.login.model.dto;

import java.sql.Date;

public class MemberDTO implements java.io.Serializable{
	
	/* 개인회원/기업회원/관리자 누가 로그인할지 모르니까 전부 적는다. */
	private int memNo;							//회원번호
	private String memId;						//아이디
	private String memEmail;					//이메일
	private String memPwd;						//비밀번호
	private String memName;						//이름
	private String memPhone;					//핸드폰번호
	private String memKinds;					//구분
	private java.sql.Date memEnrollDate;		//가입일자
	private String memEntYn;					//탈퇴여부
	private java.sql.Date memEntDate;			//탈퇴일자
	private String memEntNo;					//탈퇴사유번호
	private String coIntro;						//회사소개글
	private String coNo;						//사업자등록번호
	private String coComName;					//기업이름
	private String coCeoName;					//대표자이름
	private String coAddress;					//주소
	private String coPhone;						//사업장전화번호
	private String coPax;						//사업장팩스번호
	private String coSectors;					//업종
	private String coStatus;					//업태
	private String coWebsite;					//홈페이지주소
	
	public MemberDTO() {}

	public MemberDTO(int memNo, String memId, String memEmail, String memPwd, String memName, String memPhone,
			String memKinds, Date memEnrollDate, String memEntYn, Date memEntDate, String memEntNo, String coIntro,
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

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemPhone() {
		return memPhone;
	}

	public void setMemPhone(String memPhone) {
		this.memPhone = memPhone;
	}

	public String getMemKinds() {
		return memKinds;
	}

	public void setMemKinds(String memKinds) {
		this.memKinds = memKinds;
	}

	public java.sql.Date getMemEnrollDate() {
		return memEnrollDate;
	}

	public void setMemEnrollDate(java.sql.Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}

	public String getMemEntYn() {
		return memEntYn;
	}

	public void setMemEntYn(String memEntYn) {
		this.memEntYn = memEntYn;
	}

	public java.sql.Date getMemEntDate() {
		return memEntDate;
	}

	public void setMemEntDate(java.sql.Date memEntDate) {
		this.memEntDate = memEntDate;
	}

	public String getMemEntNo() {
		return memEntNo;
	}

	public void setMemEntNo(String memEntNo) {
		this.memEntNo = memEntNo;
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

	public String getCoWebsite() {
		return coWebsite;
	}

	public void setCoWebsite(String coWebsite) {
		this.coWebsite = coWebsite;
	}

	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memId=" + memId + ", memEmail=" + memEmail + ", memPwd=" + memPwd
				+ ", memName=" + memName + ", memPhone=" + memPhone + ", memKinds=" + memKinds + ", memEnrollDate="
				+ memEnrollDate + ", memEntYn=" + memEntYn + ", memEntDate=" + memEntDate + ", memEntNo=" + memEntNo
				+ ", coIntro=" + coIntro + ", coNo=" + coNo + ", coComName=" + coComName + ", coCeoName=" + coCeoName
				+ ", coAddress=" + coAddress + ", coPhone=" + coPhone + ", coPax=" + coPax + ", coSectors=" + coSectors
				+ ", coStatus=" + coStatus + ", coWebsite=" + coWebsite + "]";
	}

	

	
	
}
