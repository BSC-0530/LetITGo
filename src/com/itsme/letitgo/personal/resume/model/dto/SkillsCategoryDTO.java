package com.itsme.letitgo.personal.resume.model.dto;

public class SkillsCategoryDTO implements java.io.Serializable {
	
	private int categoryNo;
	private String categoryName;
	private int categoryUpperNo;

	public SkillsCategoryDTO() {}

	public SkillsCategoryDTO(int categoryNo, String categoryName, int categoryUpperNo) {
		super();
		this.categoryNo = categoryNo;
		this.categoryName = categoryName;
		this.categoryUpperNo = categoryUpperNo;
	}

	public int getCategoryNo() {
		return categoryNo;
	}

	public void setCategoryNo(int categoryNo) {
		this.categoryNo = categoryNo;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public int getCategoryUpperNo() {
		return categoryUpperNo;
	}

	public void setCategoryUpperNo(int categoryUpperNo) {
		this.categoryUpperNo = categoryUpperNo;
	}

	@Override
	public String toString() {
		return "SkillsCategoryDTO [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", categoryUpperNo="
				+ categoryUpperNo + "]";
	}

}
