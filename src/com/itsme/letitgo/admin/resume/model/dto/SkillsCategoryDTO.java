package com.itsme.letitgo.admin.resume.model.dto;

public class SkillsCategoryDTO {

	private int no;
	private String name;
	private String upperNo;
	
	public SkillsCategoryDTO() {}

	public SkillsCategoryDTO(int no, String name, String upperNo) {
		super();
		this.no = no;
		this.name = name;
		this.upperNo = upperNo;
	}

	public int getNo() {
		return no;
	}

	public String getName() {
		return name;
	}

	public String getUpperNo() {
		return upperNo;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUpperNo(String upperNo) {
		this.upperNo = upperNo;
	}

	@Override
	public String toString() {
		return "SkillsCategoryDTO [no=" + no + ", name=" + name + ", upperNo=" + upperNo + "]";
	}
	
	
	
}
