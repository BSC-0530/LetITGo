package com.itsme.letitgo.admin.info.model.dto;

import java.sql.Date;
//요청승인관리 테이블
public class CoMemberAppHistoryDTO implements java.io.Serializable {
	
	private int coReqNo;
	private int coMemNo;
	private String coAnsKinds;//응답구분
	private java.sql.Date coReqDate; // 승인요청일자
	private java.sql.Date coAnsDate; //응답일자
	private String coReqKinds; //요청구문
	private String coRejectReason; //거절사유
	private String coIntro;
	private String coNo;
	private String coComName;
	private String coCeoName;
	private String coAddress;
	private String coPhone;
	private String coPax;
	private String coSectors; //업종
	private String coStatus; //업태
	private String webSite;
	private String memFileName;
	private String memFileOrignalName;
	private String memFilePath;
	private String memFileKinds; //파일구분
	
	public CoMemberAppHistoryDTO() {}

	public CoMemberAppHistoryDTO(int coReqNo, int coMemNo, String coAnsKinds, Date coReqDate, Date coAnsDate,
			String coReqKinds, String coRejectReason, String coIntro, String coNo, String coComName, String coCeoName,
			String coAddress, String coPhone, String coPax, String coSectors, String coStatus, String webSite,
			String memFileName, String memFileOrignalName, String memFilePath, String memFileKinds) {
		super();
		this.coReqNo = coReqNo;
		this.coMemNo = coMemNo;
		this.coAnsKinds = coAnsKinds;
		this.coReqDate = coReqDate;
		this.coAnsDate = coAnsDate;
		this.coReqKinds = coReqKinds;
		this.coRejectReason = coRejectReason;
		this.coIntro = coIntro;
		this.coNo = coNo;
		this.coComName = coComName;
		this.coCeoName = coCeoName;
		this.coAddress = coAddress;
		this.coPhone = coPhone;
		this.coPax = coPax;
		this.coSectors = coSectors;
		this.coStatus = coStatus;
		this.webSite = webSite;
		this.memFileName = memFileName;
		this.memFileOrignalName = memFileOrignalName;
		this.memFilePath = memFilePath;
		this.memFileKinds = memFileKinds;
	}

	public int getCoReqNo() {
		return coReqNo;
	}

	public void setCoReqNo(int coReqNo) {
		this.coReqNo = coReqNo;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getCoAnsKinds() {
		return coAnsKinds;
	}

	public void setCoAnsKinds(String coAnsKinds) {
		this.coAnsKinds = coAnsKinds;
	}

	public java.sql.Date getCoReqDate() {
		return coReqDate;
	}

	public void setCoReqDate(java.sql.Date coReqDate) {
		this.coReqDate = coReqDate;
	}

	public java.sql.Date getCoAnsDate() {
		return coAnsDate;
	}

	public void setCoAnsDate(java.sql.Date coAnsDate) {
		this.coAnsDate = coAnsDate;
	}

	public String getCoReqKinds() {
		return coReqKinds;
	}

	public void setCoReqKinds(String coReqKinds) {
		this.coReqKinds = coReqKinds;
	}

	public String getCoRejectReason() {
		return coRejectReason;
	}

	public void setCoRejectReason(String coRejectReason) {
		this.coRejectReason = coRejectReason;
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

	public String getWebSite() {
		return webSite;
	}

	public void setWebSite(String webSite) {
		this.webSite = webSite;
	}

	public String getMemFileName() {
		return memFileName;
	}

	public void setMemFileName(String memFileName) {
		this.memFileName = memFileName;
	}

	public String getMemFileOrignalName() {
		return memFileOrignalName;
	}

	public void setMemFileOrignalName(String memFileOrignalName) {
		this.memFileOrignalName = memFileOrignalName;
	}

	public String getMemFilePath() {
		return memFilePath;
	}

	public void setMemFilePath(String memFilePath) {
		this.memFilePath = memFilePath;
	}

	public String getMemFileKinds() {
		return memFileKinds;
	}

	public void setMemFileKinds(String memFileKinds) {
		this.memFileKinds = memFileKinds;
	}

	@Override
	public String toString() {
		return "CoMemberAppHistoryDTO [coReqNo=" + coReqNo + ", coMemNo=" + coMemNo + ", coAnsKinds=" + coAnsKinds
				+ ", coReqDate=" + coReqDate + ", coAnsDate=" + coAnsDate + ", coReqKinds=" + coReqKinds
				+ ", coRejectReason=" + coRejectReason + ", coIntro=" + coIntro + ", coNo=" + coNo + ", coComName="
				+ coComName + ", coCeoName=" + coCeoName + ", coAddress=" + coAddress + ", coPhone=" + coPhone
				+ ", coPax=" + coPax + ", coSectors=" + coSectors + ", coStatus=" + coStatus + ", webSite=" + webSite
				+ ", memFileName=" + memFileName + ", memFileOrignalName=" + memFileOrignalName + ", memFilePath="
				+ memFilePath + ", memFileKinds=" + memFileKinds + "]";
	}

	
}
