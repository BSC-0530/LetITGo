package com.itsme.letitgo.personal.regist.model.dto;

import java.io.Serializable;
import java.sql.Date;

public class CoMemberDTO implements Serializable{

	private int no;
	private String id;
	private String email;
	private String pwd;
	private String name;
	private String phone;
	private String kinds;
	private Date enrollDate;
	private String entYn;
	private Date entDate;
	
	//이따 변수명 coMem으로 시작하게 만들기
	private int memNo;			//기업회원번호
	private String intro;		//회사 소개글
	private String coNo;		//사업자 등록 번호
	private String comName;		//기업 이름
	private String ceoName;     //대표자 이름
	private String address; 	//주소
	private String coPhone; 	//사업장 전화번호
	private String fax;			//사업장 팩스번호
	private String sectors;		//업종
	private String status;		//업태
	
	public CoMemberDTO() {}

	public CoMemberDTO(int no, String id, String email, String pwd, String name, String phone, String kinds,
			Date enrollDate, String entYn, Date entDate, int memNo, String intro, String coNo, String comName,
			String ceoName, String address, String coPhone, String fax, String sectors, String status) {
		super();
		this.no = no;
		this.id = id;
		this.email = email;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.kinds = kinds;
		this.enrollDate = enrollDate;
		this.entYn = entYn;
		this.entDate = entDate;
		this.memNo = memNo;
		this.intro = intro;
		this.coNo = coNo;
		this.comName = comName;
		this.ceoName = ceoName;
		this.address = address;
		this.coPhone = coPhone;
		this.fax = fax;
		this.sectors = sectors;
		this.status = status;
	}

	public int getNo() {
		return no;
	}

	public String getId() {
		return id;
	}

	public String getEmail() {
		return email;
	}

	public String getPwd() {
		return pwd;
	}

	public String getName() {
		return name;
	}

	public String getPhone() {
		return phone;
	}

	public String getKinds() {
		return kinds;
	}

	public Date getEnrollDate() {
		return enrollDate;
	}

	public String getEntYn() {
		return entYn;
	}

	public Date getEntDate() {
		return entDate;
	}

	public int getMemNo() {
		return memNo;
	}

	public String getIntro() {
		return intro;
	}

	public String getCoNo() {
		return coNo;
	}

	public String getComName() {
		return comName;
	}

	public String getCeoName() {
		return ceoName;
	}

	public String getAddress() {
		return address;
	}

	public String getCoPhone() {
		return coPhone;
	}

	public String getFax() {
		return fax;
	}

	public String getSectors() {
		return sectors;
	}

	public String getStatus() {
		return status;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public void setKinds(String kinds) {
		this.kinds = kinds;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public void setEntYn(String entYn) {
		this.entYn = entYn;
	}

	public void setEntDate(Date entDate) {
		this.entDate = entDate;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public void setCoNo(String coNo) {
		this.coNo = coNo;
	}

	public void setComName(String comName) {
		this.comName = comName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public void setCoPhone(String coPhone) {
		this.coPhone = coPhone;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public void setSectors(String sectors) {
		this.sectors = sectors;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "CoMemberDTO [no=" + no + ", id=" + id + ", email=" + email + ", pwd=" + pwd + ", name=" + name
				+ ", phone=" + phone + ", kinds=" + kinds + ", enrollDate=" + enrollDate + ", entYn=" + entYn
				+ ", entDate=" + entDate + ", memNo=" + memNo + ", intro=" + intro + ", coNo=" + coNo + ", comName="
				+ comName + ", ceoName=" + ceoName + ", address=" + address + ", coPhone=" + coPhone + ", fax=" + fax
				+ ", sectors=" + sectors + ", status=" + status + "]";
	}
	
	
	
	
}
