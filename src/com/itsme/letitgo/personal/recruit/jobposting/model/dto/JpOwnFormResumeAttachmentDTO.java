package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class JpOwnFormResumeAttachmentDTO implements java.io.Serializable {
	
	private int resumeFileNo;
	private String resumeFileName;
	private String resumeFileOriginalName;
	private String resumeFilePath;
	private int jobPostNo;
	
	
	public JpOwnFormResumeAttachmentDTO() {}


	public JpOwnFormResumeAttachmentDTO(int resumeFileNo, String resumeFileName, String resumeFileOriginalName,
			String resumeFilePath, int jobPostNo) {
		super();
		this.resumeFileNo = resumeFileNo;
		this.resumeFileName = resumeFileName;
		this.resumeFileOriginalName = resumeFileOriginalName;
		this.resumeFilePath = resumeFilePath;
		this.jobPostNo = jobPostNo;
	}


	public int getResumeFileNo() {
		return resumeFileNo;
	}


	public void setResumeFileNo(int resumeFileNo) {
		this.resumeFileNo = resumeFileNo;
	}


	public String getResumeFileName() {
		return resumeFileName;
	}


	public void setResumeFileName(String resumeFileName) {
		this.resumeFileName = resumeFileName;
	}


	public String getResumeFileOriginalName() {
		return resumeFileOriginalName;
	}


	public void setResumeFileOriginalName(String resumeFileOriginalName) {
		this.resumeFileOriginalName = resumeFileOriginalName;
	}


	public String getResumeFilePath() {
		return resumeFilePath;
	}


	public void setResumeFilePath(String resumeFilePath) {
		this.resumeFilePath = resumeFilePath;
	}


	public int getJobPostNo() {
		return jobPostNo;
	}


	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}


	@Override
	public String toString() {
		return "OwnFormResumeAttachmentDTO [resumeFileNo=" + resumeFileNo + ", resumeFileName=" + resumeFileName
				+ ", resumeFileOriginalName=" + resumeFileOriginalName + ", resumeFilePath=" + resumeFilePath
				+ ", jobPostNo=" + jobPostNo + "]";
	};
	
	
	
}
