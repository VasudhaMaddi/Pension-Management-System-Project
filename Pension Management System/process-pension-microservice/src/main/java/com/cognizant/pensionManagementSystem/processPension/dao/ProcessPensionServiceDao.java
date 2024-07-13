package com.cognizant.pensionManagementSystem.processPension.dao;

import java.util.Date;

import com.cognizant.pensionManagementSystem.processPension.model.Pensioner;

public interface ProcessPensionServiceDao {
	public boolean validatePensionerDetails(String token, String name, Date dob, String pan, long aadhaarNumber,
			String pensionType);

	public Pensioner calculatePension(String token, long aadhaarNumber);

	public boolean updatePensioner(String token, Pensioner pensioner);

	public Boolean isSessionValid(String token);

}
