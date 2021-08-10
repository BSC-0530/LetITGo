package com.itsme.letitgo.personal.resume.model.dto;

public class PortfolioDTO implements java.io.Serializable {
	
	private int potNo;
	private int resumeNo;
	private String potKinds;
	private String potLinkAddress;
	private String potFilePath;
	private String potFileOriginalName;
	private String potFileName;
	
	public PortfolioDTO() {}
	
	public PortfolioDTO(int potNo, int resumeNo, String potKinds, String potLinkAddress, String potFilePath,
			String potFileOriginalName, String potFileName) {
		super();
		this.potNo = potNo;
		this.resumeNo = resumeNo;
		this.potKinds = potKinds;
		this.potLinkAddress = potLinkAddress;
		this.potFilePath = potFilePath;
		this.potFileOriginalName = potFileOriginalName;
		this.potFileName = potFileName;
	}

	public int getPotNo() {
		return potNo;
	}

	public void setPotNo(int potNo) {
		this.potNo = potNo;
	}

	public int getResumeNo() {
		return resumeNo;
	}

	public void setResumeNo(int resumeNo) {
		this.resumeNo = resumeNo;
	}

	public String getPotKinds() {
		return potKinds;
	}

	public void setPotKinds(String potKinds) {
		this.potKinds = potKinds;
	}

	public String getPotLinkAddress() {
		return potLinkAddress;
	}

	public void setPotLinkAddress(String potLinkAddress) {
		this.potLinkAddress = potLinkAddress;
	}

	public String getPotFilePath() {
		return potFilePath;
	}

	public void setPotFilePath(String potFilePath) {
		this.potFilePath = potFilePath;
	}

	public String getPotFileOriginalName() {
		return potFileOriginalName;
	}

	public void setPotFileOriginalName(String potFileOriginalName) {
		this.potFileOriginalName = potFileOriginalName;
	}

	public String getPotFileName() {
		return potFileName;
	}

	public void setPotFileName(String potFileName) {
		this.potFileName = potFileName;
	}

	@Override
	public String toString() {
		return "PortfolioDTO [potNo=" + potNo + ", resumeNo=" + resumeNo + ", potKinds=" + potKinds
				+ ", potLinkAddress=" + potLinkAddress + ", potFilePath=" + potFilePath + ", potFileOriginalName="
				+ potFileOriginalName + ", potFileName=" + potFileName + "]";
	}
	
	
	
}
