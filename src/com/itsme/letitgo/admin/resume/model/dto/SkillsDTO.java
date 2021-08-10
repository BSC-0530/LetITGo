package com.itsme.letitgo.admin.resume.model.dto;

public class SkillsDTO implements java.io.Serializable{

	private int skillsNo;		//기술번호
	private String name;		//기술이름
	private int no; 			//카테고리 번호
	
	public SkillsDTO() {}

	public SkillsDTO(int skillsNo, String name, int no) {
		super();
		this.skillsNo = skillsNo;
		this.name = name;
		this.no = no;
	}

	public int getSkillsNo() {
		return skillsNo;
	}

	public void setSkillsNo(int skillsNo) {
		this.skillsNo = skillsNo;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	@Override
	public String toString() {
		return "SkillsDTO [skillsNo=" + skillsNo + ", name=" + name + ", no=" + no + "]";
	}
	
	
	
}
