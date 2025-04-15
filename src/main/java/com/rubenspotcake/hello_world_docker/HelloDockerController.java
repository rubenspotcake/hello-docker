package com.rubenspotcake.hello_world_docker;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloDockerController {
  @GetMapping
  public String hello() {
    return "Hello, Docker!";
  }
}
