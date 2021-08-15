package com.itsme.letitgo.personal.regist.model.dto;

import java.sql.Date;

public class InMemberDTO implements java.io.Serializable{
	
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

	public InMemberDTO() {}

	public InMemberDTO(int memNo, String memId, String memEmail, String memPwd, String memName, String memPhone,
			String memKinds, Date memEnrollDate, String memEntYn, Date memEntDate, String memEntNo) {
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

	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memId=" + memId + ", memEmail=" + memEmail + ", memPwd=" + memPwd
				+ ", memName=" + memName + ", memPhone=" + memPhone + ", memKinds=" + memKinds + ", memEnrollDate="
				+ memEnrollDate + ", memEntYn=" + memEntYn + ", memEntDate=" + memEntDate + ", memEntNo=" + memEntNo
				+ "]";
	}

	
}
