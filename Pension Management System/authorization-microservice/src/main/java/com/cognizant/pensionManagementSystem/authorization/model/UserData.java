package com.cognizant.pensionManagementSystem.authorization.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Component
@Entity
@Table(name = "userdata")
public class UserData {
	//User Id
	@Id
	@Column(name = "userId")
	private String userid;
	//User Password
	@Column(name = "userPassword")
	private String upassword;
	//User Name
	@Column(name = "userName")
	private String uname;
	//Authoriation Token
	private String authToken;

	
}
