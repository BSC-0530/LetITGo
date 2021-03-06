package com.itsme.letitgo.admin.info.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CompanyJoinDTO implements Serializable{

	private int coReqNo;
	private int memNo;			//기업회원번호
	private String id;
	private String email;
	private String pwd;
	private String name;
	private String phone;
	private String kinds;
	private java.sql.Date enrollDate;
	private String entYn;
	private java.sql.Date entDate;



	private String intro;		//회사 소개글
	private String coNo;		//사업자 등록 번호
	private String comName;		//기업 이름
	private String ceoName;     //대표자 이름
	private String address; 	//주소
	private String comPhone; 	//사업장 전화번호
	private String fax;			//사업장 팩스번호
	private String sectors;		//업종
	private String status;		//업태
	private String website;

	public CompanyJoinDTO() {}

	public CompanyJoinDTO(int coReqNo, int memNo, String id, String email, String pwd, String name, String phone,
			String kinds, Date enrollDate, String entYn, Date entDate, String intro, String coNo, String comName,
			String ceoName, String address, String comPhone, String fax, String sectors, String status,
			String website) {
		this.coReqNo = coReqNo;
		this.memNo = memNo;
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.kinds = kinds;
		this.enrollDate = enrollDate;
		this.entYn = entYn;
		this.entDate = entDate;
		this.intro = intro;
		this.coNo = coNo;
		this.comName = comName;
		this.ceoName = ceoName;
		this.address = address;
		this.comPhone = comPhone;
		this.fax = fax;
		this.sectors = sectors;
		this.status = status;
		this.website = website;
	}

	public int getCoReqNo() {
		return coReqNo;
	}

	public void setCoReqNo(int coReqNo) {
		this.coReqNo = coReqNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getKinds() {
		return kinds;
	}

	public void setKinds(String kinds) {
		this.kinds = kinds;
	}

	public java.sql.Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(java.sql.Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEntYn() {
		return entYn;
	}

	public void setEntYn(String entYn) {
		this.entYn = entYn;
	}

	public java.sql.Date getEntDate() {
		return entDate;
	}

	public void setEntDate(java.sql.Date entDate) {
		this.entDate = entDate;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public String getCoNo() {
		return coNo;
	}

	public void setCoNo(String coNo) {
		this.coNo = coNo;
	}

	public String getComName() {
		return comName;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getComPhone() {
		return comPhone;
	}

	public void setComPhone(String comPhone) {
		this.comPhone = comPhone;
	}

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public String getSectors() {
		return sectors;
	}

	public void setSectors(String sectors) {
		this.sectors = sectors;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	@Override
	public String toString() {
		return "CompanyJoinDTO [coReqNo=" + coReqNo + ", memNo=" + memNo + ", id=" + id + ", email=" + email + ", pwd="
				+ pwd + ", name=" + name + ", phone=" + phone + ", kinds=" + kinds + ", enrollDate=" + enrollDate
				+ ", entYn=" + entYn + ", entDate=" + entDate + ", intro=" + intro + ", coNo=" + coNo + ", comName="
				+ comName + ", ceoName=" + ceoName + ", address=" + address + ", comPhone=" + comPhone + ", fax=" + fax
				+ ", sectors=" + sectors + ", status=" + status + ", website=" + website + "]";
	}

	

}
