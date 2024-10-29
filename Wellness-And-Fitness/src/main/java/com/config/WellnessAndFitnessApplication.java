package com.config;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@SpringBootApplication
public class WellnessAndFitnessApplication {

	public static void main(String[] args) {
		SpringApplication.run(WellnessAndFitnessApplication.class, args);
	}

}
