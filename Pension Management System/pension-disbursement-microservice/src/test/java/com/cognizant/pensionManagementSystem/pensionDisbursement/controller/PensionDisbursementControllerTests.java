package com.cognizant.pensionManagementSystem.pensionDisbursement.controller;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

//import org.junit.jupiter.api.Test;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import com.cognizant.pensionManagementSystem.pensionDisbursement.controller.PensionDisbursementController;
import com.cognizant.pensionManagementSystem.pensionDisbursement.model.ProcessPensionInput;
import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest
@AutoConfigureMockMvc
@RunWith(SpringRunner.class)
public class PensionDisbursementControllerTests {

	private static String token = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTYxNTcyMTkxMywiaWF0IjoxNjE1NTQxOTEzfQ.sBh1dxvrhBUQWtmOIzJ0HYBIQCxZ__5Hhr1IvsOyYNI";

	@Autowired
	private MockMvc mockMvc;

	@Autowired
	private PensionDisbursementController pesionDisbursementController;

	@Test
	public void contextLoads() {
		assertNotNull(pesionDisbursementController);
	}

	@Test
	public void disbursePensionTestSuccess() throws Exception {
		ProcessPensionInput processPensionInput = new ProcessPensionInput(1234567891011120L, 6069.98, 550.0);
		ResultActions actions = mockMvc.perform(post("/DisbursePension").contentType(MediaType.APPLICATION_JSON)
				.content(asJsonString(processPensionInput)).header("Authorization", "Bearer " + token));
		actions.andExpect(status().isOk());
	}

	@Test
	public void disbursePensionTestFail() throws Exception {

		ProcessPensionInput processPensionInput1 = new ProcessPensionInput(1234567891011120L, 6069.98, 550.0);
		ResultActions actions = mockMvc.perform(get("/DisbursePension").contentType(MediaType.APPLICATION_JSON)
				.content(asJsonString(processPensionInput1)).header("Authorization", "Bearer " + token));
		actions.andExpect(status().isMethodNotAllowed());

	}

	

	

	@Test
	public void getServiceChargeTestMethodFail() throws Exception {

		ResultActions actions = mockMvc.perform(get("/getServiceCharge").contentType(MediaType.APPLICATION_JSON)
				.contentType(MediaType.TEXT_PLAIN).content("Pannier").header("Authorization", "Bearer " + token));
		actions.andExpect(status().isMethodNotAllowed());

	}

	public static String asJsonString(ProcessPensionInput processPensionInput) {
		try {
			return new ObjectMapper().writeValueAsString(processPensionInput);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
