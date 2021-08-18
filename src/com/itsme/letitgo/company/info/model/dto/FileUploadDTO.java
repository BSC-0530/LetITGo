package com.itsme.letitgo.company.info.model.dto;

public class FileUploadDTO implements java.io.Serializable {

	private int fileNo;
	private int memNo;
	private String fileName;
	private String fileOrignName;
	private String filePath;
	private String fileKinds;
	
	public FileUploadDTO() {}

	public FileUploadDTO(int fileNo, int memNo, String fileName, String fileOrignName, String filePath,
			String fileKinds) {
		super();
		this.fileNo = fileNo;
		this.memNo = memNo;
		this.fileName = fileName;
		this.fileOrignName = fileOrignName;
		this.filePath = filePath;
		this.fileKinds = fileKinds;
	}

	public int getFileNo() {
		return fileNo;
	}

	public void setFileNo(int fileNo) {
		this.fileNo = fileNo;
	}

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public String getFileOrignName() {
		return fileOrignName;
	}

	public void setFileOrignName(String fileOrignName) {
		this.fileOrignName = fileOrignName;
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
		return "FileUploadDTO [fileNo=" + fileNo + ", memNo=" + memNo + ", fileName=" + fileName + ", fileOrignName="
				+ fileOrignName + ", filePath=" + filePath + ", fileKinds=" + fileKinds + "]";
	};
	
}
