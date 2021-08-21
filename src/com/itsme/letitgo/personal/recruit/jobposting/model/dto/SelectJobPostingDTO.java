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
	private String jobPostKinds;
	private int jobNo;
	private String exposureUseCheck;
	private String jobPostApplying_kinds;
	private String jobPostContents;				// 주요업무
	private String qualificationRequirements; 	// 자격요건
	private String preferentialMatters; 		// 우대사항
	private String benefitAndWelfare;			// 혜택 및 복지
	private String companyResumeLink;			// 자사 이력서 양식 링크
	private JpCoMemberAddInfoDTO coMemberAddInfoDTO;
	private JpJobFieldDTO jobFieldDTO;
	private JpAttachmentDTO attachmentDTO;
	private JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO;
	private List<JpSkillsDTO> reqSkillsList;
	private JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO;
	
	public SelectJobPostingDTO() {}

	public SelectJobPostingDTO(int jobPostNo, int coMemNo, String jobPostTitle, String jobPostMinExperience,
			String jobPostMaxExperience, Date jobPostEnrollDate, Date jobPostDeadline, String jobPostKinds, int jobNo,
			String exposureUseCheck, String jobPostApplying_kinds, String jobPostContents,
			String qualificationRequirements, String preferentialMatters, String benefitAndWelfare,
			String companyResumeLink, JpCoMemberAddInfoDTO coMemberAddInfoDTO, JpJobFieldDTO jobFieldDTO,
			JpAttachmentDTO attachmentDTO, JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO,
			List<JpSkillsDTO> reqSkillsList, JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO) {
		super();
		this.jobPostNo = jobPostNo;
		this.coMemNo = coMemNo;
		this.jobPostTitle = jobPostTitle;
		this.jobPostMinExperience = jobPostMinExperience;
		this.jobPostMaxExperience = jobPostMaxExperience;
		this.jobPostEnrollDate = jobPostEnrollDate;
		this.jobPostDeadline = jobPostDeadline;
		this.jobPostKinds = jobPostKinds;
		this.jobNo = jobNo;
		this.exposureUseCheck = exposureUseCheck;
		this.jobPostApplying_kinds = jobPostApplying_kinds;
		this.jobPostContents = jobPostContents;
		this.qualificationRequirements = qualificationRequirements;
		this.preferentialMatters = preferentialMatters;
		this.benefitAndWelfare = benefitAndWelfare;
		this.companyResumeLink = companyResumeLink;
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

	public String getJobPostContents() {
		return jobPostContents;
	}

	public void setJobPostContents(String jobPostContents) {
		this.jobPostContents = jobPostContents;
	}

	public String getQualificationRequirements() {
		return qualificationRequirements;
	}

	public void setQualificationRequirements(String qualificationRequirements) {
		this.qualificationRequirements = qualificationRequirements;
	}

	public String getPreferentialMatters() {
		return preferentialMatters;
	}

	public void setPreferentialMatters(String preferentialMatters) {
		this.preferentialMatters = preferentialMatters;
	}

	public String getBenefitAndWelfare() {
		return benefitAndWelfare;
	}

	public void setBenefitAndWelfare(String benefitAndWelfare) {
		this.benefitAndWelfare = benefitAndWelfare;
	}

	public String getCompanyResumeLink() {
		return companyResumeLink;
	}

	public void setCompanyResumeLink(String companyResumeLink) {
		this.companyResumeLink = companyResumeLink;
	}

	public JpCoMemberAddInfoDTO getCoMemberAddInfoDTO() {
		return coMemberAddInfoDTO;
	}

	public void setCoMemberAddInfoDTO(JpCoMemberAddInfoDTO coMemberAddInfoDTO) {
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
				+ ", jobPostKinds=" + jobPostKinds + ", jobNo=" + jobNo + ", exposureUseCheck=" + exposureUseCheck
				+ ", jobPostApplying_kinds=" + jobPostApplying_kinds + ", jobPostContents=" + jobPostContents
				+ ", qualificationRequirements=" + qualificationRequirements + ", preferentialMatters="
				+ preferentialMatters + ", benefitAndWelfare=" + benefitAndWelfare + ", companyResumeLink="
				+ companyResumeLink + ", coMemberAddInfoDTO=" + coMemberAddInfoDTO + ", jobFieldDTO=" + jobFieldDTO
				+ ", attachmentDTO=" + attachmentDTO + ", jobPostingAppHistoryDTO=" + jobPostingAppHistoryDTO
				+ ", reqSkillsList=" + reqSkillsList + ", ownFormResumeAttachmentDTO=" + ownFormResumeAttachmentDTO
				+ "]";
	}



	
	
}
