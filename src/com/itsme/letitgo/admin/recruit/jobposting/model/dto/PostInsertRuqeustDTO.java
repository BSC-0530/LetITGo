package com.itsme.letitgo.admin.recruit.jobposting.model.dto;

import java.sql.Date;

public class PostInsertRuqeustDTO {

	private int jobPostReqNo;
	private int jobPostNo;
	private String coComName;
	private java.sql.Date jobPostReqDate;
	private java.sql.Date jobPostAnsDate;
	private String jobPostRejectReason;
	private String jobPostAnsKinds;
	private Integer changeReqJobPostNo;

	public PostInsertRuqeustDTO() {}

	public PostInsertRuqeustDTO(int jobPostReqNo, int jobPostNo, String coComName, Date jobPostReqDate,
			Date jobPostAnsDate, String jobPostRejectReason, String jobPostAnsKinds, Integer changeReqJobPostNo) {
		super();
		this.jobPostReqNo = jobPostReqNo;
		this.jobPostNo = jobPostNo;
		this.coComName = coComName;
		this.jobPostReqDate = jobPostReqDate;
		this.jobPostAnsDate = jobPostAnsDate;
		this.jobPostRejectReason = jobPostRejectReason;
		this.jobPostAnsKinds = jobPostAnsKinds;
		this.changeReqJobPostNo = changeReqJobPostNo;
	}

	public int getJobPostReqNo() {
		return jobPostReqNo;
	}

	public void setJobPostReqNo(int jobPostReqNo) {
		this.jobPostReqNo = jobPostReqNo;
	}

	public int getJobPostNo() {
		return jobPostNo;
	}

	public void setJobPostNo(int jobPostNo) {
		this.jobPostNo = jobPostNo;
	}

	public String getCoComName() {
		return coComName;
	}

	public void setCoComName(String coComName) {
		this.coComName = coComName;
	}

	public java.sql.Date getJobPostReqDate() {
		return jobPostReqDate;
	}

	public void setJobPostReqDate(java.sql.Date jobPostReqDate) {
		this.jobPostReqDate = jobPostReqDate;
	}

	public java.sql.Date getJobPostAnsDate() {
		return jobPostAnsDate;
	}

	public void setJobPostAnsDate(java.sql.Date jobPostAnsDate) {
		this.jobPostAnsDate = jobPostAnsDate;
	}

	public String getJobPostRejectReason() {
		return jobPostRejectReason;
	}

	public void setJobPostRejectReason(String jobPostRejectReason) {
		this.jobPostRejectReason = jobPostRejectReason;
	}

	public String getJobPostAnsKinds() {
		return jobPostAnsKinds;
	}

	public void setJobPostAnsKinds(String jobPostAnsKinds) {
		this.jobPostAnsKinds = jobPostAnsKinds;
	}

	public Integer getChangeReqJobPostNo() {
		return changeReqJobPostNo;
	}

	public void setChangeReqJobPostNo(Integer changeReqJobPostNo) {
		this.changeReqJobPostNo = changeReqJobPostNo;
	}

	@Override
	public String toString() {
		return "PostInsertRuqeustDTO [jobPostReqNo=" + jobPostReqNo + ", jobPostNo=" + jobPostNo + ", coComName="
				+ coComName + ", jobPostReqDate=" + jobPostReqDate + ", jobPostAnsDate=" + jobPostAnsDate
				+ ", jobPostRejectReason=" + jobPostRejectReason + ", jobPostAnsKinds=" + jobPostAnsKinds
				+ ", changeReqJobPostNo=" + changeReqJobPostNo + "]";
	}

	
	
	
	
}
