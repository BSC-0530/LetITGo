package com.itsme.letitgo.personal.recruit.jobposting.model.dto;

public class AttachmentDTO implements java.io.Serializable {

	private int memFileNo;
	private String memFileName;
	private String memFileOriginalName;
	private String memFilePath;
	private String memFileKinds;
	private int memNo;
	
	public AttachmentDTO() {}

	public AttachmentDTO(int memFileNo, String memFileName, String memFileOriginalName, String memFilePath,
			String memFileKinds, int memNo) {
		super();
		this.memFileNo = memFileNo;
		this.memFileName = memFileName;
		this.memFileOriginalName = memFileOriginalName;
		this.memFilePath = memFilePath;
		this.memFileKinds = memFileKinds;
		this.memNo = memNo;
	}

	public int getMemFileNo() {
		return memFileNo;
	}

	public void setMemFileNo(int memFileNo) {
		this.memFileNo = memFileNo;
	}

	public String getMemFileName() {
		return memFileName;
	}

	public void setMemFileName(String memFileName) {
		this.memFileName = memFileName;
	}

	public String getMemFileOriginalName() {
		return memFileOriginalName;
	}

	public void setMemFileOriginalName(String memFileOriginalName) {
		this.memFileOriginalName = memFileOriginalName;
	}

	public String getMemFilePath() {
		return memFilePath;
	}

	public void setMemFilePath(String memFilePath) {
		this.memFilePath = memFilePath;
	}

	public String getMemFileKinds() {
		return memFileKinds;
	}

	public void setMemFileKinds(String memFileKinds) {
		this.memFileKinds = memFileKinds;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	@Override
	public String toString() {
		return "AttachmentDTO [memFileNo=" + memFileNo + ", memFileName=" + memFileName + ", memFileOriginalName="
				+ memFileOriginalName + ", memFilePath=" + memFilePath + ", memFileKinds=" + memFileKinds + ", memNo="
				+ memNo + "]";
	};
	
	
	
}
