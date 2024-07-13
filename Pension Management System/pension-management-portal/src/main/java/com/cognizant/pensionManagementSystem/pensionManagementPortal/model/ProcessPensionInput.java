package com.cognizant.pensionManagementSystem.pensionManagementPortal.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProcessPensionInput {
	private Long aadhaarNumber;
	private Double pensionAmount;
	private Double bankServiceCharge;

	
}
