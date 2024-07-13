package com.cognizant.pensionManagementSystem.pensionerDetail;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.cognizant.pensionManagementSystem.pensionerDetail.controller.PensionerDetailControllerTests;
import com.cognizant.pensionManagementSystem.pensionerDetail.service.BankLogServiceTests;

@RunWith(Suite.class)

@Suite.SuiteClasses({ PensionerDetailControllerTests.class, BankLogServiceTests.class })

public class JunitTestSuite {
}