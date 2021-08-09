package com.itsme.letitgo.login.model.dto;

import java.sql.Date;

public class MemberDTO {
	
	// 개인 DTO부분
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
	
	public MemberDTO() {}

	public MemberDTO(int no, String id, String email, String pwd, String name, String phone, String kinds,
			Date enrollDate, String entYn, Date entDate) {
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

	@Override
	public String toString() {
		return "MemberDTO [no=" + no + ", id=" + id + ", email=" + email + ", pwd=" + pwd + ", name=" + name
				+ ", phone=" + phone + ", kinds=" + kinds + ", enrollDate=" + enrollDate + ", entYn=" + entYn
				+ ", entDate=" + entDate + "]";
	}

	
	
}
