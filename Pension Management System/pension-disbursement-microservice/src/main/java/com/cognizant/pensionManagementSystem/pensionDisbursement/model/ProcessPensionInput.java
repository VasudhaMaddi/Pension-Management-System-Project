package com.cognizant.pensionManagementSystem.pensionDisbursement.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ProcessPensionInput {
	//Pensioner Aadhaar Number
	private Long aadhaarNumber;
	// Pensioner Pension Amount
	private Double pensionAmount;
	// Pensioner Bank Service Charge
	private Double bankServiceCharge;

	
}
