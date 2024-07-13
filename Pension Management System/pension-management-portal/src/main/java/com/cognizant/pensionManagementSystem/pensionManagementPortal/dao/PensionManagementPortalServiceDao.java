package com.cognizant.pensionManagementSystem.pensionManagementPortal.dao;

import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;

import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.UserData;



public interface PensionManagementPortalServiceDao {

	public String postLogin(UserData user, HttpSession session, ModelMap warning);

	//public String getPensionerDetailForm(String token);

	public Boolean isSessionValid(String token);

	//This method returns pensioner detail form
	public String getPensionerDetailForm(String token);
}
