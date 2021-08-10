
package com.itsme.letitgo.company.scout.model.dto;

import java.util.List;

import com.itsme.letitgo.company.info.model.dto.CompanyTestDTO;
import com.itsme.letitgo.personal.resume.model.dto.HoldingAndSkillsDTO;
import com.itsme.letitgo.personal.resume.model.dto.ResumeDTO;

public class MainScoutListingDTO implements java.io.Serializable {
	
	private int memNo;
	private int resumeNo;
	private int carNo;
	private int skillNo;
	private CompanyTestDTO memberDTO;
	private ResumeDTO resumeDTO;
	private List<CompanyCareerHistoryDTO> carHistoryDTO;
	private List<HoldingAndSkillsDTO> holdingSkillDTO;
	
	public MainScoutListingDTO() {}

	public MainScoutListingDTO(int memNo, int resumeNo, int carNo, int skillNo, CompanyTestDTO memberDTO,
			ResumeDTO resumeDTO, List<CompanyCareerHistoryDTO> carHistoryDTO,
			List<HoldingAndSkillsDTO> holdingSkillDTO) {
		super();
		this.memNo = memNo;
		this.resumeNo = resumeNo;
		this.carNo = carNo;
		this.skillNo = skillNo;
		this.memberDTO = memberDTO;
		this.resumeDTO = resumeDTO;
		this.carHistoryDTO = carHistoryDTO;
		this.holdingSkillDTO = holdingSkillDTO;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public int getCarNo() {
		return carNo;
	}

	public void setCarNo(int carNo) {
		this.carNo = carNo;
	}

	public int getSkillNo() {
		return skillNo;
	}

	public void setSkillNo(int skillNo) {
		this.skillNo = skillNo;
	}

	public CompanyTestDTO getMemberDTO() {
		return memberDTO;
	}

	public void setMemberDTO(CompanyTestDTO memberDTO) {
		this.memberDTO = memberDTO;
	}

	public ResumeDTO getResumeDTO() {
		return resumeDTO;
	}

	public void setResumeDTO(ResumeDTO resumeDTO) {
		this.resumeDTO = resumeDTO;
	}

	public List<CompanyCareerHistoryDTO> getCarHistoryDTO() {
		return carHistoryDTO;
	}

	public void setCarHistoryDTO(List<CompanyCareerHistoryDTO> carHistoryDTO) {
		this.carHistoryDTO = carHistoryDTO;
	}

	public List<HoldingAndSkillsDTO> getHoldingSkillDTO() {
		return holdingSkillDTO;
	}

	public void setHoldingSkillDTO(List<HoldingAndSkillsDTO> holdingSkillDTO) {
		this.holdingSkillDTO = holdingSkillDTO;
	}

	@Override
	public String toString() {
		return "MainScoutListingDTO [memNo=" + memNo + ", resumeNo=" + resumeNo + ", carNo=" + carNo + ", skillNo="
				+ skillNo + ", memberDTO=" + memberDTO + ", resumeDTO=" + resumeDTO + ", carHistoryDTO=" + carHistoryDTO
				+ ", holdingSkillDTO=" + holdingSkillDTO + "]";
	}
	
}