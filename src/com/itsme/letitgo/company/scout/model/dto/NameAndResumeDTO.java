package com.itsme.letitgo.company.scout.model.dto;

import java.util.List;

import com.itsme.letitgo.personal.scout.model.dto.ResumeDTO;

public class NameAndResumeDTO {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memPhone;
	
	private List<ResumeDTO> resume;
	
	public NameAndResumeDTO() {}

	public NameAndResumeDTO(int memNo, String memId, String memPwd, String memName, String memEmail, String memPhone,
			List<ResumeDTO> resume) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.resume = resume;
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

	public List<ResumeDTO> getResume() {
		return resume;
	}

	public void setResume(List<ResumeDTO> resume) {
		this.resume = resume;
	}

	@Override
	public String toString() {
		return "NameAndResumeDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memEmail=" + memEmail + ", memPhone=" + memPhone + ", resume=" + resume + "]";
	}
	
	

}
