package com.itsme.letitgo.personal.info.model.dto;

import java.sql.Date;

public class MemberDTO implements java.io.Serializable {
	
	private int memNo;
	private String memId;
	private String memEmail;
	private String memPwd;
	private String memName;
	private String memPhone;
	private String memKinds;
	private Date memEnrollDate;
	private String memEntYn;
	private Date memEntDate;
	private int memEntNo;
	public MemberDTO() {}
	
	public MemberDTO(int memNo, String memId, String memEmail, String memPwd, String memName, String memPhone,
			String memKinds, Date memEnrollDate, String memEntYn, Date memEntDate, int memEntNo) {
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
	public Date getMemEnrollDate() {
		return memEnrollDate;
	}
	public void setMemEnrollDate(Date memEnrollDate) {
		this.memEnrollDate = memEnrollDate;
	}
	public String getMemEntYn() {
		return memEntYn;
	}
	public void setMemEntYn(String memEntYn) {
		this.memEntYn = memEntYn;
	}
	public Date getMemEntDate() {
		return memEntDate;
	}
	public void setMemEntDate(Date memEntDate) {
		this.memEntDate = memEntDate;
	}
	public int getMemEntNo() {
		return memEntNo;
	}
	public void setMemEntNo(int memEntNo) {
		this.memEntNo = memEntNo;
	}
	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memId=" + memId + ", memEmail=" + memEmail + ", memPwd=" + memPwd
				+ ", memName=" + memName + ", memPhone=" + memPhone + ", memKinds=" + memKinds + ", memEnrollDate="
				+ memEnrollDate + ", memEntYn=" + memEntYn + ", memEntDate=" + memEntDate + ", memEntNo=" + memEntNo
				+ "]";
	}

	 
}
