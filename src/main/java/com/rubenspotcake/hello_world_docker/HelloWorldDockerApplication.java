package com.rubenspotcake.hello_world_docker;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class HelloWorldDockerApplication {

	public static void main(String[] args) {
		SpringApplication.run(HelloWorldDockerApplication.class, args);

		System.out.println("Hello World Docker");

	}

}
