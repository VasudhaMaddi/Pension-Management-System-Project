package com.cognizant.pensionManagementSystem.pensionManagementPortal.model;

import java.util.Date;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Component
public class Pensioner {
	@NotNull(message = "Name is required")
	@Size(min = 1, max = 250)
	private String name;
	@NotNull(message = "Date of birth is required")
	private Date dateOfBirth;
	@NotNull(message = "PAN number is required")
	@Pattern(regexp = "[a-zA-Z0-9]{10}")
	private String panNumber;
	private Double salary;
	private Double allowances;
	@NotNull(message = "Pension type is required")
	private String typeOfPension;
	@NotNull(message = "Aadhaar number is required")
	@Pattern(regexp = "[0-9]{16}")
	private Long aadhaarNumber;
	private String bankName;
	private Long accountNumber;
	private Double bankServiceCharge;
	private Double pensionAmount;

	
}
