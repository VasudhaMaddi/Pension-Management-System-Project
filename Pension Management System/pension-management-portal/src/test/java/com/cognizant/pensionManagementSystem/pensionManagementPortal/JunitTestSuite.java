package com.cognizant.pensionManagementSystem.pensionManagementPortal;

import org.junit.runner.RunWith;
import org.junit.runners.Suite;

import com.cognizant.pensionManagementSystem.pensionManagementPortal.controller.WebportalControllerTests;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.service.WebportalServiceTests;




@RunWith(Suite.class)

@Suite.SuiteClasses({ WebportalControllerTests.class, WebportalServiceTests.class })

public class JunitTestSuite {
}	