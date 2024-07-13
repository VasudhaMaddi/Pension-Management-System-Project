package com.cognizant.pensionManagementSystem.processPension;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.cognizant.pensionManagementSystem.processPension.controller.ProcessPensionControllerTests;
import com.cognizant.pensionManagementSystem.processPension.service.ProcessPensionServiceTest;

@RunWith(Suite.class)

@Suite.SuiteClasses({ ProcessPensionControllerTests.class, ProcessPensionServiceTest.class })

public class JunitTestSuite {
}