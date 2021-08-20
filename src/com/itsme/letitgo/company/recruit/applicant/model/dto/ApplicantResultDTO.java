package com.itsme.letitgo.company.recruit.applicant.model.dto;

import java.util.List;

import com.itsme.letitgo.common.paging.SelectCriteria;

public class ApplicantResultDTO implements java.io.Serializable {
	
	private List<ApplicantDTO> applicantDTO;
	private SelectCriteria selectCriteria;
	private List<ResumeSkillsAndNameDTO> resumeSkillsAndNameDTO;
	
	public ApplicantResultDTO() {}

	public ApplicantResultDTO(List<ApplicantDTO> applicantDTO, SelectCriteria selectCriteria,
			List<ResumeSkillsAndNameDTO> resumeSkillsAndNameDTO) {
		super();
		this.applicantDTO = applicantDTO;
		this.selectCriteria = selectCriteria;
		this.resumeSkillsAndNameDTO = resumeSkillsAndNameDTO;
	}

	public List<ApplicantDTO> getApplicantDTO() {
		return applicantDTO;
	}

	public void setApplicantDTO(List<ApplicantDTO> applicantDTO) {
		this.applicantDTO = applicantDTO;
	}

	public SelectCriteria getSelectCriteria() {
		return selectCriteria;
	}

	public void setSelectCriteria(SelectCriteria selectCriteria) {
		this.selectCriteria = selectCriteria;
	}

	public List<ResumeSkillsAndNameDTO> getResumeSkillsAndNameDTO() {
		return resumeSkillsAndNameDTO;
	}

	public void setResumeSkillsAndNameDTO(List<ResumeSkillsAndNameDTO> resumeSkillsAndNameDTO) {
		this.resumeSkillsAndNameDTO = resumeSkillsAndNameDTO;
	}

	@Override
	public String toString() {
		return "ApplicantListDTO [applicantDTO=" + applicantDTO + ", selectCriteria=" + selectCriteria
				+ ", resumeSkillsAndNameDTO=" + resumeSkillsAndNameDTO + "]";
	}
	
	

	

	
}
