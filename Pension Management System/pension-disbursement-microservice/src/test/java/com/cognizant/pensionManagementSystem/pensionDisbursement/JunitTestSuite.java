package com.cognizant.pensionManagementSystem.pensionDisbursement;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.cognizant.pensionManagementSystem.pensionDisbursement.controller.PensionDisbursementControllerTests;
import com.cognizant.pensionManagementSystem.pensionDisbursement.service.PensionDisbursementServiceTests;

@RunWith(Suite.class)

@Suite.SuiteClasses({ PensionDisbursementControllerTests.class, PensionDisbursementServiceTests.class })

public class JunitTestSuite {
}