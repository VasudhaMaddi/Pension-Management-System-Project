package com.cognizant.pensionManagementSystem.processPension.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ProcessPensionInput {
	//Pensioner Aadhaar Number
	private Long aadhaarNumber;
	// Pensioner Pension Amount
	private Double pensionAmount;
	// Pensioner Bank Service Charge
	private Double bankServiceCharge;

	
}
