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
	private JpCoMemberAddInfoDTO coMemberAddInfoDTO;
	private JpJobFieldDTO jobFieldDTO;
	private JpAttachmentDTO attachmentDTO;
	private JpJobPostingAppHistoryDTO jobPostingAppHistoryDTO;
	private List<JpSkillsDTO> reqSkillsList;
	private JpOwnFormResumeAttachmentDTO ownFormResumeAttachmentDTO;
	
	public PremiumRecruitDTO() {}
	
	
	
}
