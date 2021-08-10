package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

import java.sql.Date;

public class JobPostingAppHistoryDTO implements java.io.Serializable {

	private int jobPostReqNo;
	private String jobPostAnsKinds;
	private Date jobPostReqDate;
	private Date jobPostAnsDate;
	private String jobPostReqKinds;
	private int jobPostNo;
	private String jobPostRejectReason;
	
	public JobPostingAppHistoryDTO() {}

	public JobPostingAppHistoryDTO(int jobPostReqNo, String jobPostAnsKinds, Date jobPostReqDate, Date jobPostAnsDate,
			String jobPostReqKinds, int jobPostNo, String jobPostRejectReason) {
		super();
		this.jobPostReqNo = jobPostReqNo;
		this.jobPostAnsKinds = jobPostAnsKinds;
		this.jobPostReqDate = jobPostReqDate;
		this.jobPostAnsDate = jobPostAnsDate;
		this.jobPostReqKinds = jobPostReqKinds;
		this.jobPostNo = jobPostNo;
		this.jobPostRejectReason = jobPostRejectReason;
	}

	public int getJobPostReqNo() {
		return jobPostReqNo;
	}

	public void setJobPostReqNo(int jobPostReqNo) {
		this.jobPostReqNo = jobPostReqNo;
	}

	public String getJobPostAnsKinds() {
		return jobPostAnsKinds;
	}

	public void setJobPostAnsKinds(String jobPostAnsKinds) {
		this.jobPostAnsKinds = jobPostAnsKinds;
	}

	public Date getJobPostReqDate() {
		return jobPostReqDate;
	}

	public void setJobPostReqDate(Date jobPostReqDate) {
		this.jobPostReqDate = jobPostReqDate;
	}

	public Date getJobPostAnsDate() {
		return jobPostAnsDate;
	}

	public void setJobPostAnsDate(Date jobPostAnsDate) {
		this.jobPostAnsDate = jobPostAnsDate;
	}

	public String getJobPostReqKinds() {
		return jobPostReqKinds;
	}

	public void setJobPostReqKinds(String jobPostReqKinds) {
		this.jobPostReqKinds = jobPostReqKinds;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getJobPostRejectReason() {
		return jobPostRejectReason;
	}

	public void setJobPostRejectReason(String jobPostRejectReason) {
		this.jobPostRejectReason = jobPostRejectReason;
	}

	@Override
	public String toString() {
		return "JobPostingAppHistoryDTO [jobPostReqNo=" + jobPostReqNo + ", jobPostAnsKinds=" + jobPostAnsKinds
				+ ", jobPostReqDate=" + jobPostReqDate + ", jobPostAnsDate=" + jobPostAnsDate + ", jobPostReqKinds="
				+ jobPostReqKinds + ", jobPostNo=" + jobPostNo + ", jobPostRejectReason=" + jobPostRejectReason + "]";
	};
	
	
	
}
