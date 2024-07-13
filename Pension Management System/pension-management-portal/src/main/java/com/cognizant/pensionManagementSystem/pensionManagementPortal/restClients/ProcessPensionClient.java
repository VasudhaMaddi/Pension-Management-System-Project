package com.cognizant.pensionManagementSystem.pensionManagementPortal.restClients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.Pensioner;
import com.cognizant.pensionManagementSystem.pensionManagementPortal.model.ProcessPensionInput;



@FeignClient(name = "process-pension-service", url = "http://localhost:9090")
public interface ProcessPensionClient {
	@GetMapping("/PensionDetail")
	public Pensioner getPensionDetail(@RequestHeader("Authorization") String token, @RequestParam String name,
			@RequestParam String dob, @RequestParam String pan, @RequestParam Long aadhaar, @RequestParam String type);

	@PostMapping("/ProcessPension")
	public int getProcessingCode(@RequestHeader("Authorization") String token,
			@RequestBody ProcessPensionInput processPensionInput);
}