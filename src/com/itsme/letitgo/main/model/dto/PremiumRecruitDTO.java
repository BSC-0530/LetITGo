package com.itsme.letitgo.main.model.dto;

import java.sql.Date;
import java.util.List;

import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpAttachmentDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpCoMemberAddInfoDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobFieldDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpJobPostingAppHistoryDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpOwnFormResumeAttachmentDTO;
import com.itsme.letitgo.personal.recruit.jobposting.model.dto.JpSkillsDTO;

public class PremiumRecruitDTO implements java.io.Serializable {

	private int jobPostNo;
	private String jobPostTitle;
	private String coComName;
	private int coMemNo;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private Date jobPostEnrollDate;
	private Date jobPostDeadline;
	private String jobName;
	private String coAddress;
	private List<JpSkillsDTO> reqSkillsList;
	
	public PremiumRecruitDTO() {}

	public PremiumRecruitDTO(int jobPostNo, String jobPostTitle, String coComName, int coMemNo,
			String jobPostMinExperience, String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline,
			String jobName, String coAddress, List<JpSkillsDTO> reqSkillsList) {
		super();
		this.jobPostNo = jobPostNo;
		this.jobPostTitle = jobPostTitle;
		this.coComName = coComName;
		this.coMemNo = coMemNo;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
		this.jobName = jobName;
		this.coAddress = coAddress;
		this.reqSkillsList = reqSkillsList;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getJobPostMinExperience() {
		return jobPostMinExperience;
	}

	public void setJobPostMinExperience(String jobPostMinExperience) {
		this.jobPostMinExperience = jobPostMinExperience;
	}

	public String getJobPostMaxExperience() {
		return jobPostMaxExperience;
	}

	public void setJobPostMaxExperience(String jobPostMaxExperience) {
		this.jobPostMaxExperience = jobPostMaxExperience;
	}

	public Date getJobPostEnrollDate() {
		return jobPostEnrollDate;
	}

	public void setJobPostEnrollDate(Date jobPostEnrollDate) {
		this.jobPostEnrollDate = jobPostEnrollDate;
	}

	public Date getJobPostDeadline() {
		return jobPostDeadline;
	}

	public void setJobPostDeadline(Date jobPostDeadline) {
		this.jobPostDeadline = jobPostDeadline;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getCoAddress() {
		return coAddress;
	}

	public void setCoAddress(String coAddress) {
		this.coAddress = coAddress;
	}

	public List<JpSkillsDTO> getReqSkillsList() {
		return reqSkillsList;
	}

	public void setReqSkillsList(List<JpSkillsDTO> reqSkillsList) {
		this.reqSkillsList = reqSkillsList;
	}

	@Override
	public String toString() {
		return "PremiumRecruitDTO [jobPostNo=" + jobPostNo + ", jobPostTitle=" + jobPostTitle + ", coComName="
				+ coComName + ", coMemNo=" + coMemNo + ", jobPostMinExperience=" + jobPostMinExperience
				+ ", jobPostMaxExperience=" + jobPostMaxExperience + ", jobPostEnrollDate=" + jobPostEnrollDate
				+ ", jobPostDeadline=" + jobPostDeadline + ", jobName=" + jobName + ", coAddress=" + coAddress
				+ ", reqSkillsList=" + reqSkillsList + "]";
	}

	

	
	
	
}
