package com.itsme.letitgo.company.payment.model.dto;

public class ExposureLeftTimeDTO {
	
    private Integer exposureTime;
    
    public ExposureLeftTimeDTO() {}

	public ExposureLeftTimeDTO(Integer exposureTime) {
		super();
		this.exposureTime = exposureTime;
	}

	public Integer getExposureTime() {
		return exposureTime;
	}

	public void setExposureTime(Integer exposureTime) {
		this.exposureTime = exposureTime;
	}

	@Override
	public String toString() {
		return "ExposureLeftTimeDTO [exposureTime=" + exposureTime + "]";
	}
    
    
}
