package com.itsme.letitgo.company.info.model.dto;

import java.sql.Date;

public class CompanyInfoDTO implements java.io.Serializable {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memPhone;
	private String memKinds;
	private Date enrollDate;
	private String entYn;
	private Date entDate;
	private int memEntNo;
	
	public CompanyInfoDTO() {}
	
	
	public CompanyInfoDTO(int memNO, String memId, String memPwd, String memName, String memEmail, String memPhone,
			String memKinds, Date enrollDate, String entYn, Date entDate, int memEntNo) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.memKinds = memKinds;
		this.enrollDate = enrollDate;
		this.entYn = entYn;
		this.entDate = entDate;
		this.memEntNo = memEntNo;
	}


	public int getMemNO() {
		return memNo;
	}

	public void setMemNO(int memNO) {
		this.memNo = memNO;
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

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
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

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getEntYn() {
		return entYn;
	}

	public void setEntYn(String entYn) {
		this.entYn = entYn;
	}

	public Date getEntDate() {
		return entDate;
	}

	public void setEntDate(Date entDate) {
		this.entDate = entDate;
	}

	public int getMemEntNo() {
		return memEntNo;
	}

	public void setMemEntNo(int memEntNo) {
		this.memEntNo = memEntNo;
	}


	@Override
	public String toString() {
		return "CompanyTestDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memEmail=" + memEmail + ", memPhone=" + memPhone + ", memKinds=" + memKinds + ", enrollDate="
				+ enrollDate + ", entYn=" + entYn + ", entDate=" + entDate + ", memEntNo=" + memEntNo + "]";
	}
	
	
}
