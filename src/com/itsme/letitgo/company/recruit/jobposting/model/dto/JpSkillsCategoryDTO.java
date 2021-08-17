package com.itsme.letitgo.company.recruit.jobposting.model.dto;

public class JpSkillsCategoryDTO {
	
	private int categoryNo;
	private String categoryName;
	private Integer categoryUpperNo;
	
	public JpSkillsCategoryDTO() {}

	public JpSkillsCategoryDTO(int categoryNo, String categoryName, Integer categoryUpperNo) {
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

	public Integer getCategoryUpperNo() {
		return categoryUpperNo;
	}

	public void setCategoryUpperNo(Integer categoryUpperNo) {
		this.categoryUpperNo = categoryUpperNo;
	}

	@Override
	public String toString() {
		return "JpSkillsCategoryDTO [categoryNo=" + categoryNo + ", categoryName=" + categoryName + ", categoryUpperNo="
				+ categoryUpperNo + "]";
	};
	

	
	

}
