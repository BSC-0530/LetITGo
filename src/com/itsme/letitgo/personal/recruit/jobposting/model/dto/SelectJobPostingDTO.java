package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

import java.sql.Date;
import java.util.List;

public class SelectJobPostingDTO implements java.io.Serializable {

	private int jobPostNo;
	private int coMemNo;
	private String jobPostTitle;
	private String jobPostMinExperience;
	private String jobPostMaxExperience;
	private Date jobPostEnrollDate;
	private Date jobPostDeadline;
	private String jobPostContents;
	private String jobPostKinds;
	private int jobNo;
	private String exposureUseCheck;
	private String jobPostApplying_kinds;
	private JpCoMemberAddInfo coMemberAddInfoDTO;
	private JpJobFieldDTO jobFieldDTO;
	private JpAttachmentDTO attachmentDTO;
	private JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO;
	private List<JpSkillsDTO> reqSkillsList;
	private JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO;
	
	public SelectJobPostingDTO() {}

	public SelectJobPostingDTO(int jobPostNo, int coMemNo, String jobPostTitle, String jobPostMinExperience,
			String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline, String jobPostContents,
			String jobPostKinds, int jobNo, String exposureUseCheck, String jobPostApplying_kinds,
			JpCoMemberAddInfo coMemberAddInfoDTO, JpJobFieldDTO jobFieldDTO, JpAttachmentDTO attachmentDTO,
			JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO, List<JpSkillsDTO> reqSkillsList,
			JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO) {
		super();
		this.jobPostNo = jobPostNo;
		this.coMemNo = coMemNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
		this.jobPostContents = jobPostContents;
		this.jobPostKinds = jobPostKinds;
		this.jobNo = jobNo;
		this.exposureUseCheck = exposureUseCheck;
		this.jobPostApplying_kinds = jobPostApplying_kinds;
		this.coMemberAddInfoDTO = coMemberAddInfoDTO;
		this.jobFieldDTO = jobFieldDTO;
		this.attachmentDTO = attachmentDTO;
		this.jobPostingAppHistoryDTO = jobPostingAppHistoryDTO;
		this.reqSkillsList = reqSkillsList;
		this.ownFormResumeAttachmentDTO = ownFormResumeAttachmentDTO;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public int getCoMemNo() {
		return coMemNo;
	}

	public void setCoMemNo(int coMemNo) {
		this.coMemNo = coMemNo;
	}

	public String getJobPostTitle() {
		return jobPostTitle;
	}

	public void setJobPostTitle(String jobPostTitle) {
		this.jobPostTitle = jobPostTitle;
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

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public String getJobPostKinds() {
		return jobPostKinds;
	}

	public void setJobPostKinds(String jobPostKinds) {
		this.jobPostKinds = jobPostKinds;
	}

	public int getJobNo() {
		return jobNo;
	}

	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}

	public String getExposureUseCheck() {
		return exposureUseCheck;
	}

	public void setExposureUseCheck(String exposureUseCheck) {
		this.exposureUseCheck = exposureUseCheck;
	}

	public String getJobPostApplying_kinds() {
		return jobPostApplying_kinds;
	}

	public void setJobPostApplying_kinds(String jobPostApplying_kinds) {
		this.jobPostApplying_kinds = jobPostApplying_kinds;
	}

	public JpCoMemberAddInfo getCoMemberAddInfoDTO() {
		return coMemberAddInfoDTO;
	}

	public void setCoMemberAddInfoDTO(JpCoMemberAddInfo coMemberAddInfoDTO) {
		this.coMemberAddInfoDTO = coMemberAddInfoDTO;
	}

	public JpJobFieldDTO getJobFieldDTO() {
		return jobFieldDTO;
	}

	public void setJobFieldDTO(JpJobFieldDTO jobFieldDTO) {
		this.jobFieldDTO = jobFieldDTO;
	}

	public JpAttachmentDTO getAttachmentDTO() {
		return attachmentDTO;
	}

	public void setAttachmentDTO(JpAttachmentDTO attachmentDTO) {
		this.attachmentDTO = attachmentDTO;
	}

	public JpJobPostingAppHistoryDTO getJobPostingAppHistoryDTO() {
		return jobPostingAppHistoryDTO;
	}

	public void setJobPostingAppHistoryDTO(JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO) {
		this.jobPostingAppHistoryDTO = jobPostingAppHistoryDTO;
	}

	public List<JpSkillsDTO> getReqSkillsList() {
		return reqSkillsList;
	}

	public void setReqSkillsList(List<JpSkillsDTO> reqSkillsList) {
		this.reqSkillsList = reqSkillsList;
	}

	public JpOwnFormResumeAttachmentDTO getOwnFormResumeAttachmentDTO() {
		return ownFormResumeAttachmentDTO;
	}

	public void setOwnFormResumeAttachmentDTO(JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO) {
		this.ownFormResumeAttachmentDTO = ownFormResumeAttachmentDTO;
	}

	@Override
	public String toString() {
		return "SelectJobPostingDTO [jobPostNo=" + jobPostNo + ", coMemNo=" + coMemNo + ", jobPostTitle=" + jobPostTitle
				+ ", jobPostMinExperience=" + jobPostMinExperience + ", jobPostMaxExperience=" + jobPostMaxExperience
				+ ", jobPostEnrollDate=" + jobPostEnrollDate + ", jobPostDeadline=" + jobPostDeadline
				+ ", jobPostContents=" + jobPostContents + ", jobPostKinds=" + jobPostKinds + ", jobNo=" + jobNo
				+ ", exposureUseCheck=" + exposureUseCheck + ", jobPostApplying_kinds=" + jobPostApplying_kinds
				+ ", coMemberAddInfoDTO=" + coMemberAddInfoDTO + ", jobFieldDTO=" + jobFieldDTO + ", attachmentDTO="
				+ attachmentDTO + ", jobPostingAppHistoryDTO=" + jobPostingAppHistoryDTO + ", reqSkillsList="
				+ reqSkillsList + ", ownFormResumeAttachmentDTO=" + ownFormResumeAttachmentDTO + "]";
	}
	


	
	
}
