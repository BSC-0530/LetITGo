package com.itsme.letitgo.personal.info.model.dto;

import java.sql.Date;

public class ModifyMemberDTO implements java.io.Serializable{

	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memPhone;
	private String memKinds;
	private String email;
	private java.sql.Date memEnrollDate;
	private String memEntYn;
	private java.sql.Date memEntDate;
	
	public ModifyMemberDTO () {}

	
	public ModifyMemberDTO(int memNo, String memId, String memPwd, String memName, String memPhone, String memKinds,
			String email, Date memEnrollDate, String memEntYn, Date memEntDate) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memPhone = memPhone;
		this.memKinds = memKinds;
		this.email = email;
		this.memEnrollDate = memEnrollDate;
		this.memEntYn = memEntYn;
		this.memEntDate = memEntDate;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	@Override
	public String toString() {
		return "ModifyMemberDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memPhone=" + memPhone + ", memKinds=" + memKinds + ", email=" + email + ", memEnrollDate="
				+ memEnrollDate + ", memEntYn=" + memEntYn + ", memEntDate=" + memEntDate + "]";
	}
	
	
	
}
