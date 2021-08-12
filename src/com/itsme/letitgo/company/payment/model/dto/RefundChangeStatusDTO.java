package com.itsme.letitgo.company.payment.model.dto;

public class RefundChangeStatusDTO {

	private String payChangeStatus;
	
	public RefundChangeStatusDTO() {}

	public RefundChangeStatusDTO(String payChangeStatus) {
		super();
		this.payChangeStatus = payChangeStatus;
	}

	public String getPayChangeStatus() {
		return payChangeStatus;
	}

	public void setPayChangeStatus(String payChangeStatus) {
		this.payChangeStatus = payChangeStatus;
	}

	@Override
	public String toString() {
		return "RefundChangeStatusDTO [payChangeStatus=" + payChangeStatus + "]";
	}
	
	
}
