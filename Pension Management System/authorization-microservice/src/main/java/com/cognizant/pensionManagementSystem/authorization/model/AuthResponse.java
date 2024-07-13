package com.cognizant.pensionManagementSystem.authorization.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AuthResponse {
    //User Id
	private String uid;
	//User Name
	private String name;
	//Is Token Valid
	private boolean isValid;

	

	

}
