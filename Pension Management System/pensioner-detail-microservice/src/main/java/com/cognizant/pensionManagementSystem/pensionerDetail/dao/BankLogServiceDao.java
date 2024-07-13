package com.cognizant.pensionManagementSystem.pensionerDetail.dao;

import javax.transaction.Transactional;

import com.cognizant.pensionManagementSystem.pensionerDetail.model.BankLog;

public interface BankLogServiceDao {
	@Transactional
	public boolean logTransaction(BankLog bankLog);

	public Boolean isSessionValid(String token);
}
