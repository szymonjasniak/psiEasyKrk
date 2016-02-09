package com.easykrk;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties
public class EasykrkApplication {

	public static void main(String[] args) {
		SpringApplication.run(EasykrkApplication.class, args);
	}
}
