package com.itsme.letitgo.personal.scout.model.dto;

import java.util.List;

import com.itsme.letitgo.personal.resume.model.dto.AwardHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.CareerHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.DetailResumeDTO;
import com.itsme.letitgo.personal.resume.model.dto.EducationHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.HoldingAndSkillsDTO;
import com.itsme.letitgo.personal.resume.model.dto.ItemAndContentDTO;
import com.itsme.letitgo.personal.resume.model.dto.JobFieldDTO;
import com.itsme.letitgo.personal.resume.model.dto.LicenseHistoryDTO;
import com.itsme.letitgo.personal.resume.model.dto.PortfolioDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public class ScoutDetailResumeDTO implements java.io.Serializable {
	
	private int memNo;
	private String memId;
	private String memPwd;
	private String memName;
	private String memEmail;
	private String memPhone;
	
	private List<DetailResumeDTO> scoutResume;
	
	public ScoutDetailResumeDTO() {}

	public ScoutDetailResumeDTO(int memNo, String memId, String memPwd, String memName, String memEmail,
			String memPhone, List<DetailResumeDTO> scoutResume) {
		super();
		this.memNo = memNo;
		this.memId = memId;
		this.memPwd = memPwd;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPhone = memPhone;
		this.scoutResume = scoutResume;
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

	public List<DetailResumeDTO> getScoutResume() {
		return scoutResume;
	}

	public void setScoutResume(List<DetailResumeDTO> scoutResume) {
		this.scoutResume = scoutResume;
	}

	@Override
	public String toString() {
		return "ScoutDetailResumeDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName="
				+ memName + ", memEmail=" + memEmail + ", memPhone=" + memPhone + ", scoutResume=" + scoutResume + "]";
	}
	
	
	
	
}
