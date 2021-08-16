package com.itsme.letitgo.company.info.model.dto;

public class ModifyChageDTO {

	private String memberId;
	private String nowPwd;
	private String newPwd;
	
	public ModifyChageDTO() {}

	public ModifyChageDTO(String memberId, String nowPwd, String newPwd) {
		this.memberId = memberId;
		this.nowPwd = nowPwd;
		this.newPwd = newPwd;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public String getNowPwd() {
		return nowPwd;
	}

	public void setNowPwd(String nowPwd) {
		this.nowPwd = nowPwd;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	@Override
	public String toString() {
		return "ModifyChageDTO [memberId=" + memberId + ", nowPwd=" + nowPwd + ", newPwd=" + newPwd + "]";
	}
	
	
	
	
}
