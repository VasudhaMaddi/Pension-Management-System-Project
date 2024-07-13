package com.cognizant.pensionManagementSystem.pensionManagementPortal.service;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.ui.ModelMap;

import com.cognizant.pensionManagementSystem.pensionManagementPortal.dao.PensionManagementPortalServiceDao;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.UserData;



@SpringBootTest
@RunWith(SpringRunner.class)
public class WebportalServiceTests {
	private static String token = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTYxNTcyMTkxMywiaWF0IjoxNjE1NTQxOTEzfQ.sBh1dxvrhBUQWtmOIzJ0HYBIQCxZ__5Hhr1IvsOyYNI";

	@Autowired
	private PensionManagementPortalServiceDao webportalServiceDao;

	@Test
	public void contextLoads() {

		assertNotNull(webportalServiceDao);

	}

	

	@Test
	public void getPensionerDetailFormTestFail() {
		assertEquals("redirect:/", webportalServiceDao.getPensionerDetailForm("randomToken"));
	}

	

	@Test
	public void isSessionValidTestFail() {
		assertFalse(webportalServiceDao.isSessionValid("randomToken"));
	}

	@Test
	public void postLoginTestSuccess() {
		UserData user = new UserData("admin", "admin", "admin", "admin");
		MockHttpSession session = new MockHttpSession();
		session.setAttribute("token", "Bearer " + token);
		ModelMap warning = new ModelMap();
		assertEquals("pensionerDetailForm", webportalServiceDao.postLogin(user, session, warning));
	}

	@Test
	public void postLoginTestFail() {
		UserData user = new UserData("randomUser", "randomUser", "randomUser", "randomUser");
		MockHttpSession session = new MockHttpSession();
		session.setAttribute("token", "randomToken");
		ModelMap warning = new ModelMap();
		assertEquals("login", webportalServiceDao.postLogin(user, session, warning));
	}
}