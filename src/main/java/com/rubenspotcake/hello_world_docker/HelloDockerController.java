package com.rubenspotcake.hello_world_docker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

public class HelloDockerController {
  @RestController
  @RequestMapping("/hello")
  public class HelloWorldController {

    @GetMapping
    public String hello() {
      return "Hello, Docker!";
    }
  }

}
