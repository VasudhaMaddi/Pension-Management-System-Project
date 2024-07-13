package com.cognizant.pensionManagementSystem.pensionManagementPortal.service;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.ModelMap;

import com.cognizant.pensionManagementSystem.pensionManagementPortal.dao.PensionManagementPortalServiceDao;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.AuthResponse;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.Pensioner;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.UserData;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.restClients.AuthClient;



@Service
public class PensionManagementPortalServiceDaoImpl implements PensionManagementPortalServiceDao {
	private static Logger logger = LoggerFactory.getLogger(PensionManagementPortalServiceDaoImpl.class);
	@Autowired
	private Pensioner pensioner;
	@Autowired
	private AuthClient authClient;

	//This method initiates login authorization
	@Override
	public String postLogin(UserData user, HttpSession session, ModelMap warning) {
		logger.info("START");

		UserData res = null;
		try {
			res = authClient.login(user);
		} catch (Exception e) {
			String errmsg = "";
			if (e.getClass().toString().contains("feign.RetryableException"))
				errmsg = "Site is Temporarily down. Try again later.";
			else
				errmsg = "Unable to login. Please check your credentials.";
			warning.addAttribute("errormsg", errmsg);
			logger.info("EXCEPTION");

			return "login";
		}
		session.setAttribute("token", "Bearer " + res.getAuthToken());
		session.setAttribute("memberId", res.getUserid());
		logger.info("END");

		return getPensionerDetailForm((String) session.getAttribute("token"));
	}

	//This method returns pensioner detail form
	@Override
	public String getPensionerDetailForm(String token) {
		logger.info("START");

		try {
			AuthResponse authResponse = authClient.getValidity(token);
		} catch (Exception e) {
			logger.info("EXCEPTION");

			return "redirect:/";
		}
		logger.info("END");

		return "pensionerDetailForm";

	}

	//This method validates the token
	@Override
	public Boolean isSessionValid(String token) {
		logger.info("START");

		try {
			authClient.getValidity(token);
		} catch (Exception e) {
			logger.info("EXCEPTION");

			return false;
		}
		logger.info("END");

		return true;
	}

}
