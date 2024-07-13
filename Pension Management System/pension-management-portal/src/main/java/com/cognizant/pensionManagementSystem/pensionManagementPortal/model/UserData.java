package com.cognizant.pensionManagementSystem.pensionManagementPortal.model;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Component
public class UserData {

	private String userid;

	private String upassword;

	private String uname;

	private String authToken;

	
}
