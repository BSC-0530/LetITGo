package com.itsme.letitgo.admin.resume.model.dto;

public class JobFieldDTO implements java.io.Serializable {
	
	private int no;			//직무번호
	private String name;	//직무이름
	
	public JobFieldDTO() {}

	public JobFieldDTO(int no, String name) {
		super();
		this.no = no;
		this.name = name;
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

	@Override
	public String toString() {
		return "JobFieldDTO [no=" + no + ", name=" + name + "]";
	}
	
	
	
}
