package com.cognizant.pensionManagementSystem.processPension.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class AuthResponse {
	// User Id
	private String uid;
	//Username
	private String name;
	//Is Token valid
	private boolean isValid;
}
