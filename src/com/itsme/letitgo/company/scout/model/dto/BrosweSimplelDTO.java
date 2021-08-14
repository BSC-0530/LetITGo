package com.itsme.letitgo.company.scout.model.dto;

import java.sql.Date;
import java.util.List;

import com.itsme.letitgo.company.info.model.dto.CompanyInfoDTO;
import com.itsme.letitgo.personal.resume.model.dto.HoldingAndSkillsDTO;

public class BrosweSimplelDTO {

	private int resumeNo;
	private int inMemNo;
	private java.sql.Date resumeWriteDate;
	private String resumeScoutStatus;
	private int jobNo;
	private String resumeTitle;

	private List<CompanyInfoDTO> memDTO;                   // 회원
	private List<HoldingAndSkillsDTO> holdingAndSkillsDTO;      //보유기술
	private List<CompanyJobFieldDTO> jobFieldDTO;                 //직무 
	private List<CompanyCareerHistoryDTO> companyCareerHistoryDTO;     //경력
	private List<CandidateDibsDTO> candidateDibsDTO;               //찜하기
	private List<ResumeReadingHistoryDTO> resumeReadingHistoryDTO;  //이력서열람이력
	private List<ReadingUsageHistoryDTO> readingUsageHistoryDTO; //열람권사용이력

	
	public BrosweSimplelDTO() {}

	public BrosweSimplelDTO(int resumeNo, int inMemNo, Date resumeWriteDate, String resumeScoutStatus, int jobNo,
			String resumeTitle, List<CompanyInfoDTO> memDTO, List<HoldingAndSkillsDTO> holdingAndSkillsDTO,
			List<CompanyJobFieldDTO> jobFieldDTO, List<CompanyCareerHistoryDTO> companyCareerHistoryDTO,
			List<CandidateDibsDTO> candidateDibsDTO, List<ResumeReadingHistoryDTO> resumeReadingHistoryDTO,
			List<ReadingUsageHistoryDTO> readingUsageHistoryDTO) {
		super();
		this.resumeNo = resumeNo;
		this.inMemNo = inMemNo;
		this.resumeWriteDate = resumeWriteDate;
		this.resumeScoutStatus = resumeScoutStatus;
		this.jobNo = jobNo;
		this.resumeTitle = resumeTitle;
		this.memDTO = memDTO;
		this.holdingAndSkillsDTO = holdingAndSkillsDTO;
		this.jobFieldDTO = jobFieldDTO;
		this.companyCareerHistoryDTO = companyCareerHistoryDTO;
		this.candidateDibsDTO = candidateDibsDTO;
		this.resumeReadingHistoryDTO = resumeReadingHistoryDTO;
		this.readingUsageHistoryDTO = readingUsageHistoryDTO;
	}
	public int getResumeNo() {
		return resumeNo;
	}
	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}
	public int getInMemNo() {
		return inMemNo;
	}
	public void setInMemNo(int inMemNo) {
		this.inMemNo = inMemNo;
	}
	public java.sql.Date getResumeWriteDate() {
		return resumeWriteDate;
	}
	public void setResumeWriteDate(java.sql.Date resumeWriteDate) {
		this.resumeWriteDate = resumeWriteDate;
	}
	public String getResumeScoutStatus() {
		return resumeScoutStatus;
	}
	public void setResumeScoutStatus(String resumeScoutStatus) {
		this.resumeScoutStatus = resumeScoutStatus;
	}
	public int getJobNo() {
		return jobNo;
	}
	public void setJobNo(int jobNo) {
		this.jobNo = jobNo;
	}
	public String getResumeTitle() {
		return resumeTitle;
	}
	public void setResumeTitle(String resumeTitle) {
		this.resumeTitle = resumeTitle;
	}
	public List<CompanyInfoDTO> getMemDTO() {
		return memDTO;
	}
	public void setMemDTO(List<CompanyInfoDTO> memDTO) {
		this.memDTO = memDTO;
	}
	public List<HoldingAndSkillsDTO> getHoldingAndSkillsDTO() {
		return holdingAndSkillsDTO;
	}
	public void setHoldingAndSkillsDTO(List<HoldingAndSkillsDTO> holdingAndSkillsDTO) {
		this.holdingAndSkillsDTO = holdingAndSkillsDTO;
	}
	public List<CompanyJobFieldDTO> getJobFieldDTO() {
		return jobFieldDTO;
	}
	public void setJobFieldDTO(List<CompanyJobFieldDTO> jobFieldDTO) {
		this.jobFieldDTO = jobFieldDTO;
	}
	public List<CompanyCareerHistoryDTO> getCompanyCareerHistoryDTO() {
		return companyCareerHistoryDTO;
	}
	public void setCompanyCareerHistoryDTO(List<CompanyCareerHistoryDTO> companyCareerHistoryDTO) {
		this.companyCareerHistoryDTO = companyCareerHistoryDTO;
	}
	public List<CandidateDibsDTO> getCandidateDibsDTO() {
		return candidateDibsDTO;
	}
	public void setCandidateDibsDTO(List<CandidateDibsDTO> candidateDibsDTO) {
		this.candidateDibsDTO = candidateDibsDTO;
	}
	public List<ResumeReadingHistoryDTO> getResumeReadingHistoryDTO() {
		return resumeReadingHistoryDTO;
	}
	public void setResumeReadingHistoryDTO(List<ResumeReadingHistoryDTO> resumeReadingHistoryDTO) {
		this.resumeReadingHistoryDTO = resumeReadingHistoryDTO;
	}
	public List<ReadingUsageHistoryDTO> getReadingUsageHistoryDTO() {
		return readingUsageHistoryDTO;
	}
	public void setReadingUsageHistoryDTO(List<ReadingUsageHistoryDTO> readingUsageHistoryDTO) {
		this.readingUsageHistoryDTO = readingUsageHistoryDTO;
	}

	@Override
	public String toString() {
		return "BrosweSimplelDTO [resumeNo=" + resumeNo + ", inMemNo=" + inMemNo + ", resumeWriteDate="
				+ resumeWriteDate + ", resumeScoutStatus=" + resumeScoutStatus + ", jobNo=" + jobNo + ", resumeTitle="
				+ resumeTitle + ", memDTO=" + memDTO + ", holdingAndSkillsDTO=" + holdingAndSkillsDTO + ", jobFieldDTO="
				+ jobFieldDTO + ", companyCareerHistoryDTO=" + companyCareerHistoryDTO + ", candidateDibsDTO="
				+ candidateDibsDTO + ", resumeReadingHistoryDTO=" + resumeReadingHistoryDTO
				+ ", readingUsageHistoryDTO=" + readingUsageHistoryDTO + "]";
	}


}
