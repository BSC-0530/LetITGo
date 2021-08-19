package com.itsme.letitgo.company.info.model.dto;

public class FileUploadDTO implements java.io.Serializable {

	private int memFileNo;
	private int memNo;
	private String memFileName;
	private String memFileOriginalName;
	private String filePath;
	private String fileKinds;
	
	public FileUploadDTO() {}

	public FileUploadDTO(int memFileNo, int memNo, String memFileName, String memFileOriginalName, String filePath,
			String fileKinds) {
		super();
		this.memFileNo = memFileNo;
		this.memNo = memNo;
		this.memFileName = memFileName;
		this.memFileOriginalName = memFileOriginalName;
		this.filePath = filePath;
		this.fileKinds = fileKinds;
	}

	public int getMemFileNo() {
		return memFileNo;
	}

	public void setMemFileNo(int memFileNo) {
		this.memFileNo = memFileNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
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

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileKinds() {
		return fileKinds;
	}

	public void setFileKinds(String fileKinds) {
		this.fileKinds = fileKinds;
	}

	@Override
	public String toString() {
		return "FileUploadDTO [memFileNo=" + memFileNo + ", memNo=" + memNo + ", memFileName=" + memFileName
				+ ", memFileOriginalName=" + memFileOriginalName + ", filePath=" + filePath + ", fileKinds=" + fileKinds
				+ "]";
	}

	
}
