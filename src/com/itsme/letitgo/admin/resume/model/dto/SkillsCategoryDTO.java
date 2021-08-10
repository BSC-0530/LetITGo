package com.itsme.letitgo.admin.resume.model.dto;

public class SkillsCategoryDTO {

	private int no; 		//카테고리 번호
	private String name;	//카테고리명
	private int upperNo;	//상위카테고리
	
	public SkillsCategoryDTO() {}

	public SkillsCategoryDTO(int no, String name, int upperNo) {
		super();
		this.no = no;
		this.name = name;
		this.upperNo = upperNo;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getUpperNo() {
		return upperNo;
	}

	public void setUpperNo(int upperNo) {
		this.upperNo = upperNo;
	}

	@Override
	public String toString() {
		return "SkillsCategoryDTO [no=" + no + ", name=" + name + ", upperNo=" + upperNo + "]";
	}

	

	
}
