package com.five.member;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.five")
public class ItJob1Application {

	public static void main(String[] args) {
		SpringApplication.run(ItJob1Application.class, args);
	}

}
