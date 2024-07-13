package com.cognizant.pensionManagementSystem.pensionerDetail.controller;

import static org.junit.Assert.assertNotNull;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.http.MediaType;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import com.cognizant.pensionManagementSystem.pensionerDetail.controller.PensionerDetailController;
import com.cognizant.pensionManagementSystem.pensionerDetail.model.BankLog;
import com.cognizant.pensionManagementSystem.pensionerDetail.model.Pensioner;
import com.fasterxml.jackson.databind.ObjectMapper;

@SpringBootTest
@AutoConfigureMockMvc
@RunWith(SpringRunner.class)
public class PensionerDetailControllerTests {
	private static String token = "eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJhZG1pbiIsImV4cCI6MTYxNTcyMTkxMywiaWF0IjoxNjE1NTQxOTEzfQ.sBh1dxvrhBUQWtmOIzJ0HYBIQCxZ__5Hhr1IvsOyYNI";
	@Autowired
	private MockMvc mockMvc;

	@Autowired
	private PensionerDetailController pensionerDetailController;

	@Test
	public void contextLoads() {

		assertNotNull(pensionerDetailController);

	}

	@Test
	public void pensionerDetailByAadhaarTestSuccess() throws Exception {
		ResultActions actions = mockMvc
				.perform(get("/PensionerDetailByAadhaar/1234567891011120").header("Authorization", "Bearer " + token));

		actions.andExpect(status().isOk());
		
	}

	@Test
	public void pensionerDetailByAadhaarTestFail() throws Exception {
		ResultActions actions = mockMvc
				.perform(get("/PensionerDetailByAadhaar/7897897897897897").header("Authorization", "Bearer " + token));

		actions.andExpect(status().isOk());
		actions.andExpect(jsonPath("$.aadhaarNumber").doesNotExist());
	}

	

	@Test
	public void updatePensionerTestFail() throws Exception {
		Pensioner pensioner = new Pensioner("Aileen Greated", new SimpleDateFormat("dd-MM-yyyy").parse("04-04-1953"),
				"J123456791", 100000.0, 1476.32, "Self pension", 2134567891011129L, "Pannier", 7426278387L, 0.0, 0.0);

		ResultActions actions = mockMvc.perform(post("/UpdatePensioner").header("Authorization", "Bearer " + token)
				.contentType(MediaType.APPLICATION_JSON).content(pensionerAsJsonString(pensioner)));

		actions.andExpect(status().isOk());
		actions.andExpect(content().contentType("application/json"));
		actions.andExpect(content().string("false"));
	}

	

	public static String pensionerAsJsonString(Pensioner pensioner) {
		try {
			return new ObjectMapper().writeValueAsString(pensioner);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	public static String bankLogAsJsonString(BankLog bankLog) {
		try {
			return new ObjectMapper().writeValueAsString(bankLog);
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

}
